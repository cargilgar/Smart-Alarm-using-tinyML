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
    return analogRead(kHRSensorPin) > 0 ? kTfLiteOk : kTfLiteError;
}

int readHeartRate(tflite::ErrorReporter* error_reporter, bool msgVerbose) {
    float hr;               /**< Variable to calculate 1 BPM. */
    float heartRate = 0;    /**< Variable to calculate the mean of the detected beats. */

    int heartBeatCounter = 0;
    bool waveDetected = false;

    // Timers
    unsigned long IBI;
    unsigned long lastTime = 0;
    unsigned long startTime = millis();

    if (msgVerbose)
        TF_LITE_REPORT_ERROR(error_reporter, "Measuring Beats per Minute.\n");

    // Read heart rate measurements during kTimeHRInterval
    while (millis() < (startTime + kTimeHRInterval)) {
        // Store new time to calculate IBI
        unsigned long newBeatTime = millis();

        if (analogRead(kHRSensorPin) >= kAnalogReadThreshold) {
            // Check wave rising and IBI > 420 ms
            if (!waveDetected && ((newBeatTime - lastTime) > kMinIBI)) {
                IBI = newBeatTime - lastTime;
                lastTime = millis();

                hr = 60000 / IBI;

                heartRate += hr;

                // Add a heart beat detected to the heartBeatCounter
                heartBeatCounter++;

                // Necessary to check that the wave decreases
                waveDetected = true;
            }
        }
        else
            // With the next beat it is necessary to check that the wave is rising
            waveDetected = false;
    }

    int BPM = heartRate / heartBeatCounter;  /**< Mean of BPMs calculated, needed for the model input. */

    if (msgVerbose) {
        TF_LITE_REPORT_ERROR(error_reporter, "Beats detected = %d.\n", heartBeatCounter);
        TF_LITE_REPORT_ERROR(error_reporter, "BPM = %d.\n", BPM);
    }

    return BPM;
}
