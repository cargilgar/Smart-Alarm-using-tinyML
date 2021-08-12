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

int8_t recognizeLabel(int8_t* arr, uint8_t arrSize, bool msgVerbose) {
    
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
      Serial.print("Label predicted: ");
      Serial.print(maxIndex);
      Serial.print(", with a certainty of: ");
      Serial.print(probPred);
      Serial.print("%.\n\n");
    }

    return maxIndex;
}
