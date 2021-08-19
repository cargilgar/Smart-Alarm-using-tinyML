const int sensorPin = A0;                        // A0 is the input pin for the heart rate sensor

int heartRate = 0;                               // Variable to calculate the mean of the detected beats
int BPM = 0;                                     // Variable to feed the interpreter (Beats per minute)
int count = 0;                                   // Variable to count detected beats
int threshold = 345;                             // Set threshold for correct measurement (check adjust_threshold.ino)
float hr = 0;                                    // Variable to calculate 1 BPM

unsigned long startTime = 0;                     // Timer needed for while loop
unsigned long IBI = 0;                           // Inter Beat Interval (ms)
unsigned long newBeatTime = 0;                   // Timer to Calculate IBI
unsigned long lastTime = 0;                      // Timer to Calculate IBI
unsigned long readingTime = 15000;               // Reading sensor Time (15 seconds)

bool counted = false;                            // Boolean to avoid false positives when the wave decreases

void setup(){

    Serial.begin(9600);                              // Start Serial Communication @ 9600
}

void loop(){

    startTime = millis();

    while (millis() < (startTime + readingTime)){            // Reading pulse sensor for readingTime seconds

        newBeatTime = millis();                              // Storage new time to calculate IBI

        if ((analogRead(sensorPin) >= threshold) {
            if(!counted) && ((newBeatTime - lastTime) > 420)) {  // Check threshold, wave rising and IBI > 420 ms

                IBI = newBeatTime - lastTime;                    // Calculate IBI
                lastTime = millis();                             // Storage last time to calculate IBI

                count++;                                         // Add a heart beat detected to the counter

                hr = (60000 / IBI);                              // Calculate 1 BPM
                heartRate += hr;                                 // Add BPMs calculated

                Serial.print("Calculated BPM = ");
                Serial.println(hr);                              // Print the calculated BPM value (just for checking)

                counted = true;                                  // It is necessary to check that the wave decreases
            }
        }
        else                // Check the wave is decreasing below threshold value
            counted = false;                                 // With the next beat it is necessary to check that the wave is rising
    }

    Serial.print("Beats detected = ");
    Serial.println(count);                                    // Print counted beats (just for checking)

    BPM = heartRate / count;                                  // Mean of BPMs calculated (value needed to feed into the model)
    //BPM = count * (60000 / readingTime);                    // Simple method (less accurate)

    Serial.print("BPM = ");
    Serial.println(BPM);                                      // Print BPM (just for checking)

    count = 0;                                                // Reset counter
    heartRate = 0;                                            // Reset hearRate
    counted = false;                                          // Reset Boolean
}
