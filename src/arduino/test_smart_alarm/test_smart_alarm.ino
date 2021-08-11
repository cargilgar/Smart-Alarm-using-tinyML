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
#include "output_handler.h"
#include "data_samples.h"

namespace{
    tflite::ErrorReporter* error_reporter = nullptr;
    tflite::MicroErrorReporter micro_error_reporter;
    tflite::MicroInterpreter* interpreter = nullptr;
    const tflite::Model* model = nullptr;
    TfLiteTensor* model_input = nullptr;
    TfLiteTensor* model_output = nullptr;

    uint8_t tensor_arena[kTensorArenaSize];

    int8_t output_array[kLabelCount];   /**< Array containing the inference result. */
    uint8_t label_test;                 /**< Number of label to compare with for each inference. */
    int correctPredicition = 0;         /**< Counter for keeping track the number of correct predictions to calculate average accuracy. */

}  // namespace

/// Checks the input tensor is initialized, has the correct size and type.
void testInputTensor();

/// Checks the output tensor has the correct size and type after inference.
void testOutputTensor();

/// Converts 32-bit float to 8-bit integer. @returns quantized value int8_t data type.
int8_t quantize(float val);

/// Initializes all data needed for the application.
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

    if (allocate_status != kTfLiteOk){
        TF_LITE_REPORT_ERROR(error_reporter, "AllocateTensors() failed");
        return;
    }

    // Set model's input and output.
    model_input = interpreter->input(0);
    model_output = interpreter->output(0);
}

/// Runs all tests in one iteration.
void loop()
{
    //Serial.println("Please enter any key to start the test.");
    TF_LITE_REPORT_ERROR(error_reporter, "Please enter any key to start the test.\n");
    for(;;){
        if(Serial.available() > 0){
          int incommingByte = Serial.read();

          if(incommingByte == 49)
              break;
        }
    }

    //Serial.println("Test started");
    TF_LITE_REPORT_ERROR(error_reporter, "Test is running... \n");

    for(uint16_t i = 0; i < kNumTests; i++){

        testInputTensor();

        // Popullate model input from samples. 
        for (uint8_t j = 0; j < kFeatureCount; j++) {
            int8_t quantized = quantize(samples[j+i*(kFeatureCount+1)]); // Accessing each row from 0 up to 13
            model_input->data.int8[j] = quantized;
        }

        // Take the 15th value for the label
        label_test = samples[kFeatureCount+i*(kFeatureCount+1)];

        // Run inference, and report any error
        TfLiteStatus invoke_status = interpreter->Invoke();

        if (invoke_status != kTfLiteOk)
            TF_LITE_REPORT_ERROR(error_reporter, "Invoke failed\n");

        testOutputTensor();

        for(uint8_t label = 0; label < kLabelCount; label++)
            output_array[label] = model_output->data.int8[label];

        int8_t prediction = recognizeLabel(output_array, false);

        if(prediction == label_test)
            correctPredicition++;
    }

    TF_LITE_REPORT_ERROR(error_reporter, "Test finalized successfully!\n\n"
        "Number of correct predicitions: %d over %d samples.\n",
        correctPredicition, kNumTests);

    correctPredicition = 0;
}

int8_t quantize(float val){
    int8_t ret = val / model_input->params.scale + model_input->params.zero_point;
    return ret;
}

void testInputTensor(){
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
