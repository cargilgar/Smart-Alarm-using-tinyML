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
#include "input_handler.h"
#include "output_handler.h"
#include "constants.h"

// Globals, used for compatibility with Arduino-style sketches.
namespace {
    tflite::MicroErrorReporter micro_error_reporter;
    tflite::MicroInterpreter* interpreter = nullptr;
    tflite::ErrorReporter* error_reporter = nullptr;
    const tflite::Model* model = nullptr;
    TfLiteTensor* model_input = nullptr;
    TfLiteTensor* model_output = nullptr;

    int inference_count = 0;

    // const int imuIndex = 0; // 0 - accelerometer, 1 - gyroscope, 2 - magnetometer

    uint8_t tensor_arena[kTensorArenaSize];

    // float input_array[kFeatureCount] = {0.1006, 0.1511, 0.1760, 0.3483, 0.4709, 0.5142, 0.4710, 0.1711, 0.0811, 0.0010, 0.0008, 0.0062, 0.0066, 0.0305}; // 0
    float input_array[kFeatureCount] = {0.0167, 0.1514, 0.1996, 0.3034, 0.4101, 0.5411, 0.4844, 0.1709, 0.1233, 0.0000, 0.0069, 0.0028, 0.0152, 0.0204}; // 4
    //float input_array[kFeatureCount];
    int8_t output_array[kLabelCount];

    //----------------------------------
    // constexpr int label_count = 5;
    // const char* labels[kLabelCount] = {"0","1","2","3","4"};

    float max_x = 0;
    float max_y = 0;
    float max_z = 0;
    unsigned long lastReportTime = 0;

    int Heart_rate_counter = 0;
    float BPM = 0;
}  // namespace

int8_t recognizeLabel(int8_t* arr, bool msgVerbose);

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

          if(incommingByte == 49)
              break;
        }

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


        for (int i = 0; i < kFeatureCount; ++i) {
            int8_t x_quantized = input_array[i] / model_input->params.scale + model_input->params.zero_point;
            model_input->data.int8[i] = x_quantized;
        }

        // Run inference, and report any error
        TfLiteStatus invoke_status = interpreter->Invoke();
        if (invoke_status != kTfLiteOk) {
            TF_LITE_REPORT_ERROR(error_reporter, "Invoke failed\n");
        }

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


        for(int i = 0; i < kLabelCount; i++)
            output_array[i] = model_output->data.int8[i];

        int8_t prediction = recognizeLabel(output_array, true);

        // Dequantize the output from integer to floating-point
        float y = (prediction - model_output->params.zero_point) * model_output->params.scale;

        Serial.println(y);

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

int8_t recognizeLabel(int8_t* arr, bool msgVerbose){
    int8_t maxValue = -128;
    int8_t maxIndex = 0;
    int8_t tmp = 0;

    for(int8_t i = 0; i < kLabelCount; i++){
        tmp = *(arr+i);
        
        if(tmp > maxValue){
            maxIndex = i;
            maxValue = tmp;
        }
    }

    // -128 = 0 ; 127 = 100
    // y = mx + b

    // b = -128 ; 127 = m*100 - 128; m = 2.56
    // y = 2.56*x - 127
    // x = (y + 127)/2.56

    // Mapping the result obtained from the 1-bit range (-128, 127) to (0, 100) to express it in percentage
    float probPred = (maxValue + 127)/2.56;
    //float probPred = map(maxValue, -128., 127., 0., 100.);

    if(msgVerbose){
      Serial.print("Label predicted: ");
      Serial.print(maxIndex);
      Serial.print(", with a certainty of: ");
      Serial.print(probPred);
      Serial.print("%.\n\n"); 
    }

    return maxIndex;
}
