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

#include "output_handler.h"

TfLiteStatus setupOutputDevice(tflite::ErrorReporter* error_reporter) {
    // TODO: this causes the application to crash on runtime, check another way.
    /*
    // Only when no output device is detected, send error back.
    if((digitalRead(kMotorPin) > 0) && (digitalRead(kPasiveBuzzerPin) > 0))
        TF_LITE_REPORT_ERROR(error_reporter, "System ready.\n");
    else if(digitalRead(kMotorPin) > 0)
        TF_LITE_REPORT_ERROR(error_reporter, "Buzzer not connected.\n");
    else if(digitalRead(kPasiveBuzzerPin) > 0)
        TF_LITE_REPORT_ERROR(error_reporter, "Vibration motor not connected.\n");
    else
        return kTfLiteError;*/

    return kTfLiteOk;
}

uint8_t recognizeLabel(int8_t* arr, bool msgVerbose) {
    int8_t maxIndex;
    int8_t maxValue = -128;

    for(int8_t i = 0; i < kLabelCount; i++) {
        int8_t temp = *(arr+i);

        if(temp > maxValue) {
            maxIndex = i;
            maxValue = temp;
        }
    }

    // Mapping from the range (-128, 127) to (0, 100) to express it in percentage
    float probPred = (maxValue + 127)/2.56;

    if(msgVerbose) {
        Serial.print("New label predicted: ");
        Serial.print(maxIndex);
        Serial.print(", with a certainty of: ");
        Serial.print(probPred);
        Serial.print("%.\n\n");
    }

    return maxIndex;
}

// Get label that has been predicted the most in the kInferenceSequence and return the index
uint8_t getMostFrequent(uint8_t* arrInferences) {
    /* --------------------------------------------
    Explanatory example of how this function operates

    Input array with the following inference sequence:
        (2, 0, 1, 2, 1, 4, 2, 3, 1, 2)

    Get frequency table for each label and sort them in descending order:
        Wake: 1              N2: 4   <- Most frequent label
        N1: 3       sort     N1: 3
        N2: 4       ===>     Wake: 1
        N3: 1                N3: 1
        REM: 1               REM: 1
    --------------------------------------------- */

    FreqLabel freqLabelsContainer[kLabelCount] = {
        FreqLabel(LabelStage::Wake),
        FreqLabel(LabelStage::N1),
        FreqLabel(LabelStage::N2),
        FreqLabel(LabelStage::N3),
        FreqLabel(LabelStage::REM)
    };

    _getFreqLabels(arrInferences, freqLabelsContainer);

    _insertionSort(freqLabelsContainer, kLabelCount);

    // The resulting array will contain the label most repeated at the first position
    return freqLabelsContainer[0].label;
}

void _getFreqLabels(uint8_t* arr, FreqLabel* labels) {
    for(int i = 0; i < kInferenceSequence; i++) {
        if(arr[i] == LabelStage::Wake)
            labels[0].freq ++;
        else if(arr[i] == LabelStage::N1)
            labels[1].freq++;
        else if(arr[i] == LabelStage::N2)
            labels[2].freq++;
        else if(arr[i] == LabelStage::N3)
            labels[3].freq++;
        else
            labels[4].freq++;
    }
}

void _insertionSort(FreqLabel* arr, uint8_t arrSize) {
    for(int j = 1; j < arrSize; j++) {
        int key = arr[j].freq;
        int i = j - 1;

        while((i > -1) && (arr[i].freq < key)) {
            _swapPointers(arr + i + 1, arr + i);
            i --;
        }
    }
}

void _swapPointers(FreqLabel* ptr1, FreqLabel* ptr2) {
    FreqLabel temp = *ptr1;
    *ptr1 = *ptr2;
    *ptr2 = temp;
}

void triggerAlarm() {
    unsigned long alarmCountDown = millis();

    // Trigger the alarm for kTimeAlarmOn (10 seconds)
    setAlarmOn();
    while(millis() - alarmCountDown < kTimeAlarmOn) {
        // if(interruptAlarm)  // TODO: set a callback that allows set interruptAlarm to true.
        //     break;
    }
    setAlarmOff();
}

void setAlarmOn() {
    digitalWrite(kMotorPin, HIGH);
    tone(kPasiveBuzzerPin, kRingTone);
}

void setAlarmOff() {
    digitalWrite(kMotorPin, LOW);
    noTone(kPasiveBuzzerPin);
}
