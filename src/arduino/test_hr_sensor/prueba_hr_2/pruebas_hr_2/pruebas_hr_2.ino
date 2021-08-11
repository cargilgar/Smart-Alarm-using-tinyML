/*

* Basic BPM Measurement with Pulse Sensor

* Quick Test Sketch for Arduino Uno/Nano

* Adapted code - Thanks to Floris Wouterlood

* T.K.Hareendran/2019

*/




int sensorPin = A0;                                // A0 is the input pin for the heart rate sensor

float sensorValue = 0;                             // Variable to store the value coming from the sensor

int count = 0;

float hr = 0;

unsigned long starttime = 0;
unsigned long IBI = 750;                           // 80 BPM
unsigned long last_time = 0;

int heartrate = 0;
int BPM = 0;

boolean counted = false;


void setup (void) {

Serial.begin (9600);                               // Start Serial Communication @ 9600

}


void loop (){


starttime = millis();


while (millis() < starttime + 5000)                   // Reading pulse sensor for 5 seconds
{

sensorValue = analogRead(sensorPin);

    if (sensorValue > 530 && counted == false && IBI > 420)  // Threshold value is 530 (~ 2.7V) 
    
    {
        last_time = IBI;                  // Storage last time to calculate BPM
        IBI = millis();                   // Storage IBI to calculate BPM
        
        count++;
    
        counted = true;
    }
  
  
    else if (sensorValue < 530){
    
        counted = false;
        
    }

    if (count!= 0){
    
        hr = 60000 / (IBI - last_time);
        heartrate = heartrate + hr;
        hr = 0;
    }
  
}

BPM = heartrate / count;

Serial.print ("BPM = ");
Serial.println (BPM);  

count = 0;
counted = false;
heartrate = 0;

}
