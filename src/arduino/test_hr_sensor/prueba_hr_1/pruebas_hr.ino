/*

* Basic BPM Measurement with Pulse Sensor

* Quick Test Sketch for Arduino Uno/Nano

* Adapted code - Thanks to Floris Wouterlood

* T.K.Hareendran/2019

*/




int sensorPin = A0;                                // A0 is the input pin for the heart rate sensor

float sensorValue = 0;                             // Variable to store the value coming from the sensor

int hr_count = 0;
int hr_data[6];

unsigned long starttime = 0;
unsigned long false_check = 0;

int BPM = 0;
int heart_rate_counter = 0;
int time_counter = 0;
int b = 0;

boolean counted = false;



void setup (void) {

Serial.begin (9600);                               // Start Serial Communication @ 9600

}


void loop (){

starttime = millis();

while (millis()<starttime + 1000){                   // Reading pulse sensor for 1 second

    sensorValue = analogRead(sensorPin);
    
    if ((sensorValue > 530) && (starttime - false_check > 420) && counted == false){          // Threshold value is 530 (~ 2.7V)
  
        hr_count++;
        false_check = millis();                          // Verification for BPM false positive (until 140 BPM)
    }
    if (time_counter = 5){

        hr_data[b] = hr_count;
        
        if(b < 5){
            b++;
        }
        else {
            b = 0;
        }
        time_counter = 0;
    }

}

time_counter++;

if (time_counter = 5){
for (int a = 0; a < (sizeof hr_data/sizeof hr_data[0]); a++) {
        BPM = BPM + hr_data[a];
        BPM = BPM * 2;
}

Serial.println ((sizeof hr_data/sizeof hr_data[0]));  
Serial.println (BPM);                        // Display BPM in the Serial Monitor
Serial.println ();

BPM = 0;
}



}
