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

namespace{
    const int sensorPin = A0;

    int heartRate = 0;                               /**< Variable to calculate the mean of the detected beats. */
    int BPM = 0;                                     /**< Variable to feed the interpreter (Beats per minute). */
    int count = 0;                                   /**< Variable to count detected beats. */
    int threshold = 345;                             /**< Set threshold for correct measurement (see adjust_threshold.ino). */
    float hr = 0;                                    /**< Variable to calculate 1 BPM. */
    
    unsigned long startTime = 0;                     /**< Timer needed for while loop. */
    unsigned long IBI = 0;                           /**< Inter Beat Interval (ms). */
    unsigned long newBeatTime = 0;                   /**< Timer to Calculate IBI. */
    unsigned long lastTime = 0;                      /**< Timer to Calculate IBI. */
    unsigned long readingTime = 15000;               /**< Reading sensor Time (15 seconds). */
    
    bool waveDetected = false;                       /**< Boolean to avoid false positives when the wave decreases. */   
}

void setup(){
    Serial.begin(9600);
}

void loop(){
    startTime = millis();

    // Reading pulse sensor for readingTime seconds
    while (millis() < (startTime + readingTime)){
        // Store new time to calculate IBI
        newBeatTime = millis();

        if (analogRead(sensorPin) >= threshold) {
            // Check wave rising and IBI > 420 ms
            if((!waveDetected) && ((newBeatTime - lastTime) > 420)) {

                IBI = newBeatTime - lastTime;
                lastTime = millis();

                // Add a heart beat detected to the counter
                count++;

                // Calculate 1 BPM
                hr = (60000 / IBI);
                
                // Add BPMs calculated
                heartRate += hr;

                Serial.print("Calculated BPM = ");
                Serial.println(hr);

                // Necessary to check that the wave decreases
                waveDetected = true;
            }
        }
        else
            // With the next beat it is necessary to check that the wave is rising
            waveDetected = false;
    }

    Serial.print("Beats detected = ");
    Serial.println(count);

    BPM = heartRate / count;

    Serial.print("BPM = ");
    Serial.println(BPM);

    // --- reset variables
    count = 0;
    heartRate = 0;
    waveDetected = false;
}
