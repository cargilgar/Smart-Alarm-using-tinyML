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
#include <Arduino_LSM9DS1.h>  // required library for IMU

//-----------------------------
#define USE_ARDUINO_INTERRUPTS false   // Set-up low-level interrupts for most acurate BPM math.
#include <PulseSensorPlayground.h>     // Includes the PulseSensorPlayground Library.   

/*
   The format of our output.

   Set this to PROCESSING_VISUALIZER if you're going to run
    the Processing Visualizer Sketch.
    See https://github.com/WorldFamousElectronics/PulseSensor_Amped_Processing_Visualizer

   Set this to SERIAL_PLOTTER if you're going to run
    the Arduino IDE's Serial Plotter.
*/
const int OUTPUT_TYPE = SERIAL_PLOTTER;
//-----------------------------

#include "main_functions.h"

#include "tensorflow/lite/micro/all_ops_resolver.h"
#include "constants.h"
#include "model.h"
#include "output_handler.h"
#include "tensorflow/lite/micro/micro_error_reporter.h"
#include "tensorflow/lite/micro/micro_interpreter.h"
#include "tensorflow/lite/schema/schema_generated.h"
#include "tensorflow/lite/version.h"

/*
To include: test.cpp? 
- Include the unit test framework header (#include "tensorflow/lite/micro/testing/micro_test.h")
- Validate input shape


link: https://www.tensorflow.org/lite/microcontrollers/get_started_low_level
*/

// Globals, used for compatibility with Arduino-style sketches.
namespace {
  tflite::MicroInterpreter* interpreter = nullptr;
  tflite::ErrorReporter* error_reporter = nullptr;
  const tflite::Model* model = nullptr;
  TfLiteTensor* input = nullptr;
  TfLiteTensor* output = nullptr;
  
  int inference_count = 0;
  
  // const int imuIndex = 0; // 0 - accelerometer, 1 - gyroscope, 2 - magnetometer
  bool startStream = false;  
  
  constexpr int kTensorArenaSize = 2000;
  uint8_t tensor_arena[kTensorArenaSize];

//----------------------------------
  //constexpr int label_count = 5;
  const char* labels[label_count] = {"0","1","2","3","4"}; 

  float max_x = 0;
  float max_y = 0;
  float max_z = 0;
  unsigned long lastReportTime = 0;
  float input_array[kFeatureCount];
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

}  // namespace
                                                           
//----------------------

void setup() { 
  // Start serial
  Serial.begin(9600);
  Serial.println("Started");
  while (!Serial);

  // Start IMU
  if (!IMU.begin()) {
    Serial.println("Failed to initialize IMU");
    while (1);
  }

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

  static tflite::MicroErrorReporter micro_error_reporter;
  error_reporter = &micro_error_reporter;

  // Map the model into a usable data structure. This doesn't involve any
  // copying or parsing, it's a very lightweight operation.
  model = tflite::GetModel(g_model);
  if (model->version() != TFLITE_SCHEMA_VERSION) {
    TF_LITE_REPORT_ERROR(error_reporter,
                         "Model provided is schema version %d not equal "
                         "to supported version %d.",
                         model->version(), TFLITE_SCHEMA_VERSION);
    return;
  }

  // This pulls in all the operation implementations we need.
  static tflite::AllOpsResolver resolver;
  
/*  // Micro ops used
    static tflite::MicroMutableOpResolver<3> micro_op_resolver;
    micro_op_resolver.AddFullyConnected();
    micro_op_resolver.AddRelu();
    micro_op_resolver.AddSoftmax();
*/

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


 // Set model input settings
  TfLiteTensor* model_input = interpreter->input(0);
  if ((model_input->dims->size != kFeatureCount)) // || 
    //(model_input->dims->data[0] != 1) ||
    // (model_input->type != kTfLiteInt8)) 
    {
    TF_LITE_REPORT_ERROR(error_reporter,
                         "Bad input tensor parameters in model");
    return;
  }
/*
    // Set model output settings
  TfLiteTensor* model_output = interpreter->output(0);
  if ((model_output->dims->size != 2) || (model_output->dims->data[0] != 1) ||
      (model_output->dims->data[1] != label_count) ||
      (model_output->type != kTfLiteInt8)) {
    TF_LITE_REPORT_ERROR(error_reporter,
                         "Bad output tensor parameters in model");
    return;
  }
*/


  // Keep track of how many inferences we have performed.
  inference_count = 0;
}

void loop() 
{

// --- Read data from IMU
  startStream = true;
  float x, y, z;
  if (startStream) 
  {
    if (IMU.accelerationAvailable()) 
    {
      IMU.readAcceleration(x, y, z);
    }
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


//--------------------------------------------------------------------

                                            
//------------------------Data Pre-processing--------------------------
while(millis() - lastReportTime < kTimeInterval){
  // Max value for each axis in 1 second and scale to m/s2
    if(abs(x) > abs(max_x)){
       max_x = abs(x) * g;
   }
    if(abs(y) > abs(max_y)){
       max_y = abs(y) * g;
   }    
    if(abs(z) > abs(max_z)){
       max_z = abs(z) * g;
   }
}
  
   // Generate all model features
   input_array[4] = (max_x - input_array[0]); // max_value - last max_value, x axis
   input_array[5] = (max_y - input_array[1]); // max_value - last max_value, y axis
   input_array[6] = (max_z - input_array[2]); // max_value - last max_value, z axis

   input_array[7] = sqrt(sq(max_x) + sq(max_y) + sq(max_z)); // max_value module 

   input_array[8] = sqrt(sq(input_array[4]) + sq(input_array[5]) + sq(input_array[6])); // module 'acc subtraction'

   input_array[9] = max_x * max_x * max_x; // max_x cubed (X**3)

   input_array[10] = sq(input_array[6]); //  (max_value - last max_value) squared, z axis
   
   input_array[11] = abs(input_array[6]); // absolute value (max_value - last max_value), z axis
   
   input_array[12] = sq(input_array[8]); // module 'acc subtraction' squared

   // input_array[13] = max_y * max_y * max_y; // max_y cubed (Y**3)

   input_array[13] = pow(e,input_array[4]); // exp(max_x - last max_x)
    

   // Storage max values for each second
   input_array[0] = max_x; //Last second max_value, x axis
   input_array[1] = max_y; //Last second max_value, y axis
   input_array[2] = max_z; //Last second max_value, z axis

   
   // Clean max accelerometer values 
   max_x = 0;
   max_y = 0;
   max_z = 0;

  for(int i = 0; i < kFeatureCount; i++){
    Serial.print(String(input_array[i]) + " , ");
  }
  
   Heart_rate_counter = ++Heart_rate_counter;

   // Update BPM each 15 seconds
   if(Heart_rate_counter = 15){
      input_array[3] = BPM;
      Heart_rate_counter = 0;
   }
   
   lastReportTime = millis();

//---------------------------------------------------------------------

//-------------------------------------------------------------------
     // Pass to the model and run the interpreter
    TfLiteTensor* model_input = interpreter->input(0);
    for (int i = 0; i < kFeatureCount; ++i) {
      model_input->data.int8[i] = input_array[i];
    }
 //---------------------------------------------------------------------
   /*   

  // Quantize the input from floating-point to integer
  int8_t x_quantized = x / input->params.scale + input->params.zero_point;
  // Place the quantized input in the model's input tensor
  input->data.int8[0] = x_quantized;

*/
  // Run inference, and report any error
  TfLiteStatus invoke_status = interpreter->Invoke();
  if (invoke_status != kTfLiteOk) {
    TF_LITE_REPORT_ERROR(error_reporter, "Invoke failed on x: %f\n",
                         static_cast<double>(x));
    return;
  }

  // Obtain the quantized output from model's output tensor
  int8_t y_quantized = output->data.int8[0];
  // Dequantize the output from integer to floating-point
 y = (y_quantized - output->params.zero_point) * output->params.scale;

  // Output the results. A custom HandleOutput function can be implemented
  // for each supported hardware target.
  HandleOutput(error_reporter, x, y);

}
