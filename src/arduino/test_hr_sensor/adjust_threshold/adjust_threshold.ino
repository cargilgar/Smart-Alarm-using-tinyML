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

const int pulseSensorPin = A0;

static int sensorValue;
static int threshold = 346;                     // Determine which sensorValue to "count as a beat", and which to ingore.

void setup() {
    while(!Serial);
    pinMode(LED_BUILTIN, OUTPUT);
    pinMode(pulseSensorPin, INPUT);
    Serial.begin(9600);
}

void loop() {
    sensorValue = analogRead(pulseSensorPin);

    Serial.println(sensorValue);

    if(sensorValue > threshold)                 // If the signal is above threshold value, turn on the built-in Arduino's LED.
        digitalWrite(LED_BUILTIN, HIGH);
    else
        digitalWrite(LED_BUILTIN, LOW);         // Otherwise, the sensorValue must be below threshold value, so turn this LED off

    delay(10);
}
