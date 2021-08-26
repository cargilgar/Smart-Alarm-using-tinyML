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

InputHandler::InputHandler(float paramScale, int zeroPoint)
    : _arrSize(kFeatureCount), _initialized(false), _zeroPoint(zeroPoint), _scale(paramScale) {}

void InputHandler::generateFeatures(float* imu, float bpm) {

    float x = imu[0];
    float y = imu[1];
    float z = imu[2];

    if(!_initialized) {
        features[0] = x; // x axis
        features[1] = y; // y axis
        features[2] = z; // z axis
        _initialized = true;
    }
    else {
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
    }
}

void InputHandler::_normalizeFeatures() {
    for(int i = 0; i < kFeatureCount; i++)
        features[i] = (features[i] - _normalizer[i*2]) / (_normalizer[i*2+1] - _normalizer[i*2]);
}

bool InputHandler::isInitialized() {
    return _initialized;
}

void InputHandler::popullateModelInput(int8_t* input) {
    for(int i = 0; i < kFeatureCount; i++)
        input[i] = _quantize(features[i]);
}

int8_t InputHandler::_quantize(float val) {
    int8_t ret = val / _scale + _zeroPoint;
    return ret;
}

void InputHandler::displayFeatures() {
    for(int i = 0; i < kFeatureCount; i++)
        Serial.println(features[i], 4);
}

InputHandler::~InputHandler() {}
