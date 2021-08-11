const int sensorPin = A0;                          // A0 is the input pin for the heart rate sensor

float sensorValue = 0;                             // Variable to store the value coming from the sensor
float hr = 0;

unsigned long starttime = 0;
unsigned long IBI = 0;                            // 80 BPM
unsigned long last_time = 0;

int heartrate = 0;
int BPM = 0;
int count = 0;
int threshold = 348; 

boolean counted = false;                          //Adjust threshold for a correct measurement


void setup () {

Serial.begin (9600);                              // Start Serial Communication @ 9600

}

void loop (){


starttime = millis();

while (millis() < (starttime + 15000)){                  // Reading pulse sensor for 5 seconds

sensorValue = analogRead(sensorPin);
IBI = millis();                                         // Storage IBI to calculate BPM
 
    if ((sensorValue >= threshold) && (counted == false) && ((IBI - last_time) > 420)){  // Threshold value is 530 (~ 2.7V) 
    
        last_time = IBI;                                // Storage last time to calculate BPM                          
        
        count++;                        
        counted = true;
        Serial.println (sensorValue);
    }
  
    else if (sensorValue < threshold){
        counted = false;  
    }

    if (count > 0){
        hr = 60000 / (IBI - last_time);
        //Serial.println (hr);
        heartrate = heartrate + hr;
        hr = 0;
    }
  
}

Serial.print ("count = ");
Serial.println (count);

//BPM = heartrate / count;
BPM = count * 4;

Serial.print ("BPM = ");
Serial.println (BPM);  

count = 0;
heartrate = 0;
counted = false;

}
