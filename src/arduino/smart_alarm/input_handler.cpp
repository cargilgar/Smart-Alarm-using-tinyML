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

#include "input_handler.h"

InputHandler::InputHandler(uint8_t arrSize) : _arrSize(arrSize), _initialized(false){}

int InputHandler::generateFeatures(float x, float y, float z, float bpm){

    if(!_initialized){
        features[0] = x; // x axis
        features[1] = y; // y axis
        features[2] = z; // z axis
        _initialized = true;
        return 1;
    }

    features[3] = bpm;

    features[4] = x - features[0]; // max_value - last max_value, x axis
    features[5] = y - features[1]; // max_value - last max_value, y axis
    features[6] = z - features[2]; // max_value - last max_value, z axis


    features[0] = x; // x axis
    features[1] = y; // y axis
    features[2] = z; // z axis

    features[7] = sqrt(sq(x) + sq(y) + sq(z)); // max_value module

    features[8] = sqrt(sq(features[4]) + sq(features[5]) + sq(features[6])); // module 'acc subtraction'

    features[9] = x * x * x; // max_x cubed (X**3)

    features[10] = sq(features[4]); //  (max_value - last max_value) squared, x axis

    features[11] = sq(features[6]); //  (max_value - last max_value) squared, z axis

    features[12] = sq(features[8]); // module 'acc subtraction' squared

    features[13] = pow(e, features[4]); // exp(max_x - last max_x)

    _initialized = false;

    _normalizeFeatures();

    return 0;
}

void InputHandler::_normalizeFeatures(){
    for(uint8_t i = 0; i < kFeatureCount; i++)
        features[i] = (features[i] - normalizer[i*2]) / (normalizer[i*2+1] - normalizer[i*2]);
}

void InputHandler::displayFeatures(){
    for(uint8_t i = 0; i < kFeatureCount; i++)
        Serial.println(features[i], 4);
}

InputHandler::~InputHandler()
{
    delete [] features;
}
