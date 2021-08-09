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

//-----------------------------
#define USE_ARDUINO_INTERRUPTS false   // Set-up low-level interrupts for most acurate BPM math.
#include <PulseSensorPlayground.h>     // Includes the PulseSensorPlayground Library.

#include <Arduino_LSM9DS1.h>  // required library for IMU
#include "tensorflow/lite/micro/all_ops_resolver.h"
#include "tensorflow/lite/micro/micro_error_reporter.h"
#include "tensorflow/lite/micro/micro_interpreter.h"
#include "tensorflow/lite/schema/schema_generated.h"
#include "tensorflow/lite/version.h"

#include "main_functions.h"
#include "model.h"
#include "output_handler.h"
#include "input_handler.h"

const int OUTPUT_TYPE = SERIAL_PLOTTER;
//-----------------------------

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

    // float i0[kFeatureCount] = {0.1006, 0.1511, 0.1760, 0.3483, 0.4709, 0.5142, 0.4710, 0.1711, 0.0811, 0.0010, 0.0008, 0.0062, 0.0066, 0.0305}; // 0
    // float i1[kFeatureCount] = {0.0441, 0.1383, 0.2307, 0.5056, 0.4479, 0.5153, 0.4954, 0.0190, 0.0175, 0.0001, 0.0002, 0.0006, 0.0003, 0.0262}; // 1
    // float i2[kFeatureCount] = {0.0132, 0.1087, 0.2301, 0.1011, 0.4326, 0.5592, 0.4921, 0.0033, 0.0800, 0.0000, 0.0017, 0.0009, 0.0064, 0.0237}; // 2
    // float i3[kFeatureCount] = {0.1393, 0.1920, 0.0669, 0.1910, 0.5336, 0.5761, 0.3928, 0.0022, 0.1953, 0.0027, 0.0206, 0.0511, 0.0381, 0.0461}; // 3
    // float i4[kFeatureCount] = {0.0545, 0.2239, 0.0610, 0.3034, 0.4696, 0.5135, 0.4940, 0.0019, 0.0243, 0.0002, 0.0007, 0.0007, 0.0006, 0.0302}; // 4
    // float* input_array;
    float input_array[kFeatureCount];
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

    /*
    Pinout Pulse Sensor:
    PULSE_INPUT = Analog Input. Connected to the pulse sensor
    purple (signal) wire.
    PULSE_BLINK = digital Output. Connected to an LED (and 220 ohm resistor)
    that will flash on each detected pulse.
    PULSE_FADE = digital Output. PWM pin onnected to an LED (and resistor)
    that will smoothly fade with each pulse.
    NOTE: PULSE_FADE must be a pin that supports PWM.
    If USE_INTERRUPTS is true, Do not use pin 9 or 10 for PULSE_FADE,
    because those pins' PWM interferes with the sample timer.
    */
    const int PULSE_INPUT = A0;
    const int PULSE_FADE = 5;
    const int THRESHOLD = 550;   // Adjust this number to avoid noise when idle

    byte samplesUntilReport; // the number of samples remaining to read
    // until we want to report a sample over the serial connection.
    // We want to report a sample value over the serial port
    // only once every 20 milliseconds (10 samples) to avoid
    // doing Serial output faster than the Arduino can send.

    const byte SAMPLES_PER_SERIAL_SAMPLE = 10;

    PulseSensorPlayground pulseSensor; // All the PulseSensor Playground functions.

    InputHandler input_handler(kFeatureCount);
}  // namespace

void testInputTensor();
void testOutputTensor();

void setup() {
    //------------------------------------------------------- pulse sensor stuff
    /*
    Use 115200 baud because that's what the Processing Sketch expects to read,
    and because that speed provides about 11 bytes per millisecond.

    If we used a slower baud rate, we'd likely write bytes faster than
    they can be transmitted, which would mess up the timing
    of readSensor() calls, which would make the pulse measurement
    not work properly.
    */
    Serial.begin(115200);

    // Configure the PulseSensor manager.
    pulseSensor.analogInput(PULSE_INPUT);
    pulseSensor.fadeOnPulse(PULSE_FADE);

    pulseSensor.setSerial(Serial);
    pulseSensor.setOutputType(OUTPUT_TYPE);
    pulseSensor.setThreshold(THRESHOLD);

    // Skip the first SAMPLES_PER_SERIAL_SAMPLE in the loop().
    samplesUntilReport = SAMPLES_PER_SERIAL_SAMPLE;

    //-------------------------------------------------------------

    // Start IMU

    if (!IMU.begin()) {
        Serial.println("Failed to initialize IMU");
        while (1);
    }


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
        Serial.println("Press any key and hit enter to start");
        for(;;){
            int incommingByte = Serial.read();

            if(incommingByte != 0)
                break;
        }

        lastReportTime = millis();
        float x, y, z;

        while(millis() - lastReportTime < kTimeInterval){

            IMU.readAcceleration(x, y, z);
            // Max value for each axis in 1 second and scale to m/s2
            if(abs(x) > abs(max_x))
                max_x = abs(x) * g;

            if(abs(y) > abs(max_y))
                max_y = abs(y) * g;

            if(abs(z) > abs(max_z))
                max_z = abs(z) * g;
        }

        // ------------------------ Read data from Heart Rate Sensor
         /*
         See if a sample is ready from the PulseSensor.

         If USE_INTERRUPTS is false, this call to sawNewSample()
         will, if enough time has passed, read and process a
         sample (analog voltage) from the PulseSensor.
         */
         if (pulseSensor.sawNewSample()) {
             /*
             Every so often, send the latest Sample.
             We don't print every sample, because our baud rate
             won't support that much I/O.
             */
             if (--samplesUntilReport == (byte) 0) {
                 samplesUntilReport = SAMPLES_PER_SERIAL_SAMPLE;

                 pulseSensor.outputSample();

                 /*
                 At about the beginning of every heartbeat,
                 report the heart rate and inter-beat-interval.
                 */
                 if (pulseSensor.sawStartOfBeat()) {
                     pulseSensor.outputBeat();
                 }
             }

             /*******
             Here is a good place to add code that could take up
             to a millisecond or so to run.
             *******/
         }

         /******
         Don't add code here, because it could slow the sampling
         from the PulseSensor.
         ******/


         Heart_rate_counter = ++Heart_rate_counter;

        // Update BPM each 15 seconds
        if(Heart_rate_counter = 15){
            input_array[3] = BPM;
            Heart_rate_counter = 0;
        }

        //--------------------------------------------------------------------

        // --- Send input values to input handler

        int result = 0;

        // result = input_handler.generateFeatures(0.157700, 0.354492, 0.931030, 59.);
        // result = input_handler.generateFeatures(0.229553, 0.304962, 0.932907, 64.);
        result = input_handler.generateFeatures(max_x, max_y, max_z, BPM);

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

        // Clean max accelerometer values
        max_x = 0;
        max_y = 0;
        max_z = 0;

        Serial.println(features[0]); //DELETE
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
