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

#include "tensorflow/lite/micro/all_ops_resolver.h"
#include "tensorflow/lite/micro/micro_error_reporter.h"
#include "tensorflow/lite/micro/micro_interpreter.h"
#include "tensorflow/lite/schema/schema_generated.h"
#include "tensorflow/lite/version.h"

#include "main_functions.h"
#include "model.h"
#include "output_handler.h"
#include "input_handler.h"

// Globals, used for compatibility with Arduino-style sketches.
namespace {
    tflite::MicroErrorReporter micro_error_reporter;
    tflite::MicroInterpreter* interpreter = nullptr;
    tflite::ErrorReporter* error_reporter = nullptr;
    const tflite::Model* model = nullptr;
    TfLiteTensor* model_input = nullptr;
    TfLiteTensor* model_output = nullptr;

    int inference_count = 0;

    uint8_t tensor_arena[kTensorArenaSize];

    // float i0[kFeatureCount] = {0.1006, 0.1511, 0.1760, 0.3483, 0.4709, 0.5142, 0.4710, 0.1711, 0.0811, 0.0010, 0.0008, 0.0062, 0.0066, 0.0305}; // 0
    // float i1[kFeatureCount] = {0.0441, 0.1383, 0.2307, 0.5056, 0.4479, 0.5153, 0.4954, 0.0190, 0.0175, 0.0001, 0.0002, 0.0006, 0.0003, 0.0262}; // 1
    // float i2[kFeatureCount] = {0.0132, 0.1087, 0.2301, 0.1011, 0.4326, 0.5592, 0.4921, 0.0033, 0.0800, 0.0000, 0.0017, 0.0009, 0.0064, 0.0237}; // 2
    // float i3[kFeatureCount] = {0.1393, 0.1920, 0.0669, 0.1910, 0.5336, 0.5761, 0.3928, 0.0022, 0.1953, 0.0027, 0.0206, 0.0511, 0.0381, 0.0461}; // 3
    // float i4[kFeatureCount] = {0.0545, 0.2239, 0.0610, 0.3034, 0.4696, 0.5135, 0.4940, 0.0019, 0.0243, 0.0002, 0.0007, 0.0007, 0.0006, 0.0302}; // 4
    // float* input_array;
    float input_array[kFeatureCount];
    int8_t output_array[kLabelCount];


    float max_x = 0;
    float max_y = 0;
    float max_z = 0;
    unsigned long lastReportTime = 0;

    int Heart_rate_counter = 0;
    float BPM = 0;

    bool reset = false;

    InputHandler input_handler(kFeatureCount);
}  // namespace

void testInputTensor();
void testOutputTensor();

void setup() {
    // Start serial
    Serial.begin(9600);
    Serial.println("Started");

    // Setting up logging
    error_reporter = &micro_error_reporter;

    // Map the model into a usable data structure.
    model = tflite::GetModel(g_model);

    // Check the model has been converted with a compatible tflite converter version
    if (model->version() != TFLITE_SCHEMA_VERSION)
    {
        TF_LITE_REPORT_ERROR(error_reporter,
            "Model provided is schema version %d not equal "
            "to supported version %d.",
            model->version(), TFLITE_SCHEMA_VERSION);
            return;
    }

    static tflite::AllOpsResolver resolver;

    // Instantiate the interpreter to run the model with.
    static tflite::MicroInterpreter static_interpreter(
        model, resolver, tensor_arena, kTensorArenaSize, error_reporter);

    interpreter = &static_interpreter;

    // Allocate memory from the tensor_arena for the model's tensors.
    TfLiteStatus allocate_status = interpreter->AllocateTensors();

    if (allocate_status != kTfLiteOk){
        TF_LITE_REPORT_ERROR(error_reporter, "AllocateTensors() failed");
        return;
    }

    // Set model's input and output settings
    model_input = interpreter->input(0);
    model_output = interpreter->output(0);

}

void loop()
{
    while(Serial.available()>0)
    {
        for(;;){
          int incommingByte = Serial.read();

          if(incommingByte != 0)
              break;
        }

        int result = 0;

        result = input_handler.generateFeatures(0.157700, 0.354492, 0.931030, 59.);
        result = input_handler.generateFeatures(0.229553, 0.304962, 0.932907, 64.);
        //result = input_handler.generateFeatures(max_x, max_y, max_z, BPM);

        if(result == 0){

            input_handler.displayFeatures();

            testInputTensor();

            // Popullate model input
            for (int8_t i = 0; i < kFeatureCount; ++i) {
                int8_t x_quantized = input_array[i] / model_input->params.scale + model_input->params.zero_point;
                //int8_t x_quantized = input_handler.features[i] / model_input->params.scale + model_input->params.zero_point;
                model_input->data.int8[i] = x_quantized;
            }

            // Run inference, and report any error
            TfLiteStatus invoke_status = interpreter->Invoke();

            if (invoke_status != kTfLiteOk)
                TF_LITE_REPORT_ERROR(error_reporter, "Invoke failed\n");

            testOutputTensor();

            for(int i = 0; i < kLabelCount; i++)
                output_array[i] = model_output->data.int8[i];

            int8_t prediction = recognizeLabel(output_array, true);

            // Dequantize the output from integer to floating-point
            float y = (prediction - model_output->params.zero_point) * model_output->params.scale;

            Serial.println(y);
        }

        // Output the results. A custom HandleOutput function can be implemented
        // for each supported hardware target.
        // HandleOutput(error_reporter, x, y);

        // --- TEST INFERENCES
        // input->data.f[0] = 1.;
        // interpreter.Invoke();
        // value = output->data.f[0];
        // TF_LITE_MICRO_EXPECT_NEAR(0.841, value, 0.05);
        //
        // input->data.f[0] = 3.;
        // interpreter.Invoke();
        // value = output->data.f[0];
        // TF_LITE_MICRO_EXPECT_NEAR(0.141, value, 0.05);
        //
        // input->data.f[0] = 5.;
        // interpreter.Invoke();
        // value = output->data.f[0];
        // TF_LITE_MICRO_EXPECT_NEAR(-0.959, value, 0.05);
    }
}

void testInputTensor(){
    // TEST INPUT TENSOR
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

void testOutputTensor(){
    // TEST OUTPUT TENSOR
    if ((model_output->dims->size != 2))
        TF_LITE_REPORT_ERROR(error_reporter, "Output Tensor size incorrect.\n");

    if ((model_output->dims->data[0] != 1))
        TF_LITE_REPORT_ERROR(error_reporter, "The first dimension of the Output "
        "Tensor is not %d.It is: %d.\n", 1, model_output->dims->data[0]);

    if ((model_output->dims->data[1] != kLabelCount))
        TF_LITE_REPORT_ERROR(error_reporter, "The second dimension of the Output "
        "Tensor is not %d.It is: %d.\n", kLabelCount, model_output->dims->data[1]);

    if ((model_output->type != kTfLiteInt8))
        TF_LITE_REPORT_ERROR(error_reporter, "Output Tensor type is not %d. \n",
        kTfLiteInt8);

}
