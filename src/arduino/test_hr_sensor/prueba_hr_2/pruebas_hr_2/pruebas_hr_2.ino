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
unsigned long IBI = 0;
unsigned long last_time = 0;

int heartrate = 0;

//boolean counted = false;




void setup (void) {

pinMode (13, OUTPUT);                              // D13 LED as Status Indicator

Serial.begin (9600);                               // Start Serial Communication @ 9600

}


void loop (){


starttime = millis();


while (millis() < starttime + 5000)                   // Reading pulse sensor for 10 seconds
{

sensorValue = analogRead(sensorPin);

    if (sensorValue > 530 )  // Threshold value is 550 (~ 2.7V) && counted == false
    
    {
        last_time = IBI;
        IBI = millis();
        count++;
    
  
        counted = true;
    }
  
  
  else if (sensorValue < 530)
  
  {
  
  // counted = false;
  
  digitalWrite (13, LOW);
  
  }

    if (count!= 0){
    
        hr = 60000 / (IBI - last_time);
        heartrate = heartrate + hr;
        hr = 0;
  }
  
}
Serial.print ("BPM = ");

Serial.println (heartrate/count);  

count = 0;

}
