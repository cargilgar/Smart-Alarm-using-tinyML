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
#include "data_samples.h"

// Globals, used for compatibility with Arduino-style sketches.
namespace {
    tflite::MicroErrorReporter micro_error_reporter;
    tflite::MicroInterpreter* interpreter = nullptr;
    tflite::ErrorReporter* error_reporter = nullptr;
    const tflite::Model* model = nullptr;
    TfLiteTensor* model_input = nullptr;
    TfLiteTensor* model_output = nullptr;

    uint8_t tensor_arena[kTensorArenaSize];

    int8_t output_array[kLabelCount];
    uint8_t label_test;
    int correctPredicition = 0;

}  // namespace

void testInputTensor();
void testOutputTensor();

void setup() {

    Serial.begin(9600);

    // Setting up logging
    error_reporter = &micro_error_reporter;

    // Map the model into a usable data structure.
    model = tflite::GetModel(g_model);

    // Check the model has been converted with a compatible tflite converter version
    if (model->version() != TFLITE_SCHEMA_VERSION){
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
        Serial.println("Please enter any key to start the test");

        for(;;){
          int incommingByte = Serial.read();

          if(incommingByte != 0)
              break;
        }

        for(uint8_t i = 0; i < kNumTests; i++){

            testInputTensor();

            // Popullate model input from samples
            for (int8_t j = 0; j < kFeatureCount; j++) {
                int8_t x_quantized = samples[j+i*14] / model_input->params.scale + model_input->params.zero_point;
                model_input->data.int8[j] = x_quantized;
            }

            // Take the 15th value for the label
            label_test = samples[i*15];

            // Run inference, and report any error
            TfLiteStatus invoke_status = interpreter->Invoke();

            if (invoke_status != kTfLiteOk)
                TF_LITE_REPORT_ERROR(error_reporter, "Invoke failed\n");

            testOutputTensor();

            for(int i = 0; i < kLabelCount; i++)
                output_array[i] = model_output->data.int8[i];

            int8_t prediction = recognizeLabel(output_array, true);

            if(prediction == label_test)
                correctPredicition++;
        }

    TF_LITE_REPORT_ERROR(error_reporter, "Test finalized successfully!"
        "\nNumber of correct predicitions: %d over %d samples",
        correctPredicition, kNumTests);

    }

    correctPredicition = 0;

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
