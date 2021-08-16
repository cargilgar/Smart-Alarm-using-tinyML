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

#include "alarm_setup.h"
#include "heart_rate_handler.h"
#include "imu_handler.h"
#include "input_handler.h"
#include "main_functions.h"
#include "model.h"
#include "output_handler.h"
#include "queue.h"

namespace {
    tflite::MicroErrorReporter micro_error_reporter;
    tflite::MicroInterpreter* interpreter = nullptr;
    tflite::ErrorReporter* error_reporter = nullptr;
    const tflite::Model* model = nullptr;
    TfLiteTensor* model_input = nullptr;
    TfLiteTensor* model_output = nullptr;

    uint8_t tensor_arena[kTensorArenaSize];

    uint16_t inference_count = 0;
    Queue inferences;
    uint16_t totalInferences = 0;

    float imu_input[3];

    unsigned long wakeUpTimeRange[2];

    InputHandler* input_handler;
}  // namespace

/// Initializes all data needed for the application.
void setup() {

    while(!Serial);

    // Setting up logging
    error_reporter = &micro_error_reporter;

    // Setup sensors and output devices. Check all are OK.
    TfLiteStatus imu_setup_status = setupIMUSensor();
    if (imu_setup_status != kTfLiteOk)
        TF_LITE_REPORT_ERROR(error_reporter, "Failed to initialize IMU\n");

    TfLiteStatus hr_setup_status = setupHeartRateSensor();
    if (hr_setup_status != kTfLiteOk)
        TF_LITE_REPORT_ERROR(error_reporter, "Heart Rate sensor not present\n");

    TfLiteStatus output_status = setupOutputDevice(error_reporter);
    if (output_status != kTfLiteOk)
        TF_LITE_REPORT_ERROR(error_reporter, "Output devices not present\n");

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

    // Get intervals in milliseconds to let know Arduino when to start inferences
    getwakeUpTimeRange(kStrCurrentTime, kStrWakeUpTime, kTimeRangeAlarm, wakeUpTimeRange);

    // Display all introductory information
    displayAlarmConfiguration(wakeUpTimeRange);
}

/// Each iteration loop() takes measurements from IMU and HR sensors, processes
/// these data into proper format for the Input tensor and runs one inference.
/// This proccess is then repeated inference_count times to ensure a good
/// prediction.
void loop() {

    // Wait until the time to wake up arrives.
    while(millis() < wakeUpTimeRange[0]) { /*The arduino will remain idle here*/}

     TF_LITE_REPORT_ERROR(error_reporter, "It's about time! Predicting sleep stages for awakening.\n");
     
    // We are within the interval range for waking up, start doing inferences during this time.
    while(millis() < wakeUpTimeRange[1]) {

        // First time doing inferences, we will fill up the inferences buffer
        while(inference_count < kInferenceSequence) {

            readAccelerometer(imu_input, error_reporter, false);

            // First time new data comes in, no HR is needed, only imu data.
            if(!input_handler->isInitialized())
                input_handler->generateFeatures(imu_input[0], imu_input[1], imu_input[2], 0);

            else {
                int bpm = readHeartRate(error_reporter, false);

                // --- Send input values to input handler
                input_handler->generateFeatures(imu_input[0], imu_input[1], imu_input[2], bpm);

                // Popullate model input
                input_handler->popullateModelInput(model_input->data.int8);

                // Run inference, and report any error
                TfLiteStatus invoke_status = interpreter->Invoke();

                if (invoke_status != kTfLiteOk)
                    TF_LITE_REPORT_ERROR(error_reporter, "Invoke failed\n");

                // Extract the maximum value of the probabilistic distribution from the model output.
                int new_inference = recognizeLabel(model_output->data.int8, kLabelCount, true);

                inferences.enqueue(new_inference);

                //TF_LITE_REPORT_ERROR(error_reporter, "Inference %d successful, label predicted: %d.\n",
                //                    totalInferences, inferences.getItemAt(inference_count));
                
                totalInferences++;
                inference_count++;
            }
        }

        // With the inferences buffer filled up, let's get the most frequent label.
        uint8_t prediction = getMostFrequent(inferences.getQueuePointer(), kInferenceSequence);

        TF_LITE_REPORT_ERROR(error_reporter, "Most frequent label in the last %d inferences: %d.\n", 
                            kInferenceSequence, prediction);

        // REM label predicted, break the loop and trigger the alarm.
        if(prediction == LabelStage::REM)
            break;

        // TODO: keep track of labels inferred to know what the model should predict in the following inferences

        // Once inferences buffer is full, we will only perform one inference
        // dequeuing the oldest inference. Decrasing inference_count by one will
        // enqueue only one new inference nito the buffer.
        inference_count -= 1;
    }

    // If we arrive here, we have either predicted a REM label or reached the
    // end of the waking up time range with no success finding the appropiate
    // moment. Either way, set the alarm ON.
    TF_LITE_REPORT_ERROR(error_reporter, "Good Morning! \n\n"
                        "Total number of inferences %d.\n", totalInferences);

    triggerAlarm();
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
