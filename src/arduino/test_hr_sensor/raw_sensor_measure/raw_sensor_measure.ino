const int sensorPin = A0;                          // A0 is the input pin for the heart rate sensor

float sensorValue = 0;                             // Variable to store the value coming from the sensor
float hr = 0;

unsigned long starttime = 0;
unsigned long IBI = 0;                            // 80 BPM
unsigned long last_time = 0;

int heartrate = 0;
int BPM = 0;
int count = 0;
int threshold = 550; 

boolean counted = false;                          //Adjust threshold fo a correct measurement


void setup () {

Serial.begin (9600);                              // Start Serial Communication @ 9600

}

void loop (){

sensorValue = analogRead(sensorPin);

        Serial.println (sensorValue);
    
  

  delay(20);



}
