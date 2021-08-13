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

#include "heart_rate_handler.h"

TfLiteStatus setupHeartRateSensor() {

    TfLiteStatus status = (analogRead(kSensorPin) > 0) ? kTfLiteOk : kTfLiteOk;

    return status;
}

int readHeartRate(tflite::ErrorReporter* error_reporter) {

    // int heartBeatCounter = 0;
    // unsigned long kMaxWaitingTime = 100;
    // unsigned long startTime;
    // float hr;                   // Variable to calculate 1 BPM
    // float heartRate = 0;        // Variable to calculate the mean of the detected beats
    //
    // while(analogRead(kSensorPin) < kAnalogReadThreshold) {}  // Wait until reading the first wave
    //
    // // Start of waves sequence
    // for(;;) {
    //     startTime = millis();
    //
    //     while((analogRead(kSensorPin) > kAnalogReadThreshold) && ((millis() - startTime) < kMaxWaitingTime)) {}
    //     if((millis() - startTime) >= kMaxWaitingTime) { break; }
    //
    //     heartBeatCounter++;
    //
    //     startTime = millis();
    //     while((analogRead(sensorRead) < kAnalogReadThreshold) && ((millis() - startTime) < kMaxWaitingTime)) {}
    //     if((millis() - startTime) >= kMaxWaitingTime){ break; }
    // }  // End of waves sequence


    int sensorValue;        // Variable to store the value coming from the sensor
    float hr;               // Variable to calculate 1 BPM
    float heartRate = 0;      // Variable to calculate the mean of the detected beats

    int heartBeatCounter = 0;                                   // Variable to count detected beats
    bool waveDetected = false;                            // Boolean to avoid false positives when the wave decreases

    // Timers
    unsigned long newBeatTime;
    unsigned long IBI;
    unsigned long lastTime = 0;                      // Timer to Calculate IBI

    unsigned long startTime = millis();

    // Read heart rate measurements during kTimeHRInterval
    while (millis() < (startTime + kTimeHRInterval)) {

        sensorValue = analogRead(kSensorPin);                 // Read SensorValue
        newBeatTime = millis();                              // Storage new time to calculate IBI

        if (sensorValue >= kAnalogReadThreshold) {
            if(!waveDetected && ((newBeatTime - lastTime) > 420)) {  // Check wave rising and IBI > 420 ms

                IBI = newBeatTime - lastTime;                    // Calculate IBI
                lastTime = millis();                             // Store last time to calculate IBI

                hr = 60000 / IBI;                              // Calculates 1 BPM

                heartRate += hr;                                  // Add BPMs calculated
                // hr = 0;                                          // Reset the value to use it again in the next beat

                heartBeatCounter++;                                      // Add a heart beat detected to the heartBeatCounter
                waveDetected = true;                                  // It is necessary to check that the wave decreases
            }
      }
      else                                                // Check the wave is decreasing below threshold value
          waveDetected = false;                                 // With the next beat it is necessary to check that the wave is rising
    }

    int BPM = heartRate / heartBeatCounter;                                  // Mean of BPMs calculated (value needed to feed into the model)

    TF_LITE_REPORT_ERROR(error_reporter, "Beats detected = %d.\n", heartBeatCounter);
    TF_LITE_REPORT_ERROR(error_reporter, "BPM = %d.\n", BPM);

    return BPM;
}
