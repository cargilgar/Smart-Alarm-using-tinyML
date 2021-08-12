/* Copyright 2021 Carlos Gil, Daniel Moreno.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

https://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
==============================================================================*/

#include <TensorFlowLite.h>

#include "tensorflow/lite/micro/micro_mutable_op_resolver.h"
#include "tensorflow/lite/micro/micro_error_reporter.h"
#include "tensorflow/lite/micro/micro_interpreter.h"
#include "tensorflow/lite/schema/schema_generated.h"
#include "tensorflow/lite/version.h"

#include "main_functions.h"
#include "model.h"
#include "input_handler.h"
#include "output_handler.h"
#include "heart_rate_handler.h"
#include "imu_handler.h"

namespace {
    tflite::MicroErrorReporter micro_error_reporter;
    tflite::MicroInterpreter* interpreter = nullptr;
    tflite::ErrorReporter* error_reporter = nullptr;
    const tflite::Model* model = nullptr;
    TfLiteTensor* model_input = nullptr;
    TfLiteTensor* model_output = nullptr;

    uint8_t tensor_arena[kTensorArenaSize];

    int inference_count = 0;

    // const int imuIndex = 0; // 0 - accelerometer, 1 - gyroscope, 2 - magnetometer

    float imu_input[3];
    float input_array[kFeatureCount];
    int8_t output_array[kLabelCount];

    // InputHandler input_handler(kFeatureCount);
    InputHandler* input_handler;
}  // namespace

/// Checks the input tensor is initialized, has the correct size and type.
void testInputTensor();

/// Checks the output tensor has the correct size and type after inference.
void testOutputTensor();

/// Initializes all data needed for the application.
void setup() {

    // Serial.begin(9600);

    TfLiteStatus imu_setup_status = setupIMUSensor();
    if (imu_setup_status != kTfLiteOk) {
        TF_LITE_REPORT_ERROR(error_reporter, "Failed to initialize IMU\n");
    }

    TfLiteStatus hr_setup_status = setupHeartRateSensor();
    if (hr_setup_status != kTfLiteOk) {
        TF_LITE_REPORT_ERROR(error_reporter, "Heart Rate sensor is not present\n");
    }

    // Setting up logging
    error_reporter = &micro_error_reporter;

    // Map the model into a usable data structure.
    model = tflite::GetModel(g_model);

    // Check the model has been converted with a compatible tflite converter version
    if (model->version() != TFLITE_SCHEMA_VERSION) {
        TF_LITE_REPORT_ERROR(error_reporter,
            "Model provided is schema version %d not equal "
            "to supported version %d.",
            model->version(), TFLITE_SCHEMA_VERSION);
            return;
    }

    // Load only the necessary operations.
    static tflite::MicroMutableOpResolver<3> resolver;
    resolver.AddFullyConnected();
    resolver.AddRelu();
    resolver.AddSoftmax();

    // Instantiate the interpreter to run the model with.
    static tflite::MicroInterpreter static_interpreter(
        model, resolver, tensor_arena, kTensorArenaSize, error_reporter);

    interpreter = &static_interpreter;

    // Allocate memory from the tensor_arena for the model's tensors.
    TfLiteStatus allocate_status = interpreter->AllocateTensors();

    if (allocate_status != kTfLiteOk) {
        TF_LITE_REPORT_ERROR(error_reporter, "AllocateTensors() failed");
        return;
    }

    // Set model's input.
    model_input = interpreter->input(0);
    testInputTensor();

    // Instantiate input handler with tensor quantization parameters
    input_handler = new InputHandler(kFeatureCount, model_input->params.scale,
                                    model_input->params.zero_point);

    // Set model's output.
    model_output = interpreter->output(0);
}

/// Each iteration loop() takes measurements from IMU and HR sensors, processes
/// these data into proper format for the Input tensor and runs one inference.
/// This proccess is then repeated inference_count times to ensure a good
/// prediction.
void loop() {

    Serial.println("Press any key and hit enter to start");
    for(;;) {
        int incommingByte = Serial.read();

        if(incommingByte != 0)
            break;
    }

    Serial.println("Starting inference!");

    readAccelerometer(imu_input);
    int bpm = readHeartRate(error_reporter);


    // --- Send input values to input handler
    
    int result = input_handler->generateFeatures(imu_input[0], imu_input[1], imu_input[2], bpm);

    if(result == 0) {

        // input_handler->displayFeatures();

        // Popullate model input
        input_handler->popullateModelInput(model_input->data.int8);
        // for (int8_t i = 0; i < kFeatureCount; ++i) {
        //     int8_t x_quantized = quantize(input_handler.features[i]);
        //     model_input->data.int8[i] = x_quantized;
        // }

        // Run inference, and report any error
        TfLiteStatus invoke_status = interpreter->Invoke();

        if (invoke_status != kTfLiteOk)
            TF_LITE_REPORT_ERROR(error_reporter, "Invoke failed\n");

        for(int i = 0; i < kLabelCount; i++)
            output_array[i] = model_output->data.int8[i];

        int8_t prediction = recognizeLabel(output_array, kLabelCount, true);
    }
}

void testInputTensor() {
    if ((model_input == nullptr))
        TF_LITE_REPORT_ERROR(error_reporter, "Input Tensor does not exist.\n");

    if ((model_input->dims->size != 2))
        TF_LITE_REPORT_ERROR(error_reporter, "Input Tensor size incorrect.\n");

    if ((model_input->dims->data[0] != 1))
        TF_LITE_REPORT_ERROR(error_reporter, "The first dimension of the Input "
        "Tensor is not %d.It is: %d.\n", 1, model_input->dims->data[0]);

    if ((model_input->dims->data[1] != kFeatureCount))
        TF_LITE_REPORT_ERROR(error_reporter, "The second dimension of the Input "
        "Tensor is not %d.It is: %d.\n", kFeatureCount, model_input->dims->data[1]);

    if ((model_input->type != kTfLiteInt8))
        TF_LITE_REPORT_ERROR(error_reporter, "Input Tensor type is not %d.\n",
        kTfLiteInt8);
}
