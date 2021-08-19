//  Variables
int pulseSensorPin = 0;               // Pulse Sensor connected to ANALOG PIN 0
int blinkPin = 13;                    //  The on-board Arduion LED

int sensorValue;                      // Holds the incoming raw data. sensorValue can range from 0-1024
int threshold = 346;                  // Determine which sensorValue to "count as a beat", and which to ingore.

void setup() {
    pinMode(blinkPin, OUTPUT);          // Pin that will blink
    Serial.begin(9600);                 // Set's up Serial Communication at certain speed. @9600
}

void loop() {

    sensorValue = analogRead(pulseSensorPin);   // Read the PulseSensor's value.
                                                // Assign this value to the "sensorValue" variable.
    Serial.println(sensorValue);                // Send the sensorValue to Serial Plotter.

    if(sensorValue > threshold)                 // If the signal is above threshold value, then "turn-on" Arduino's on-Board LED.
        digitalWrite(blinkPin, HIGH);
    else
        digitalWrite(blinkPin, LOW);            //  Else, the sensorValue must be below threshold value, so "turn-off" this LED.

    delay(10);

}
