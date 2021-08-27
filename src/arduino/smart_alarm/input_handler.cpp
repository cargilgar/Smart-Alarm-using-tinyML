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
    : _initialized(false), _zeroPoint(zeroPoint), _scale(paramScale), _features() {}

void InputHandler::generateFeatures(float* imu, int bpm) {

    float x = imu[0];
    float y = imu[1];
    float z = imu[2];

    if(!_initialized) {
        _features[0] = x; // x axis
        _features[1] = y; // y axis
        _features[2] = z; // z axis
        _initialized = true;
    }
    else {
        _features[3] = bpm;

        _features[4] = x - _features[0]; // max_value - last max_value, x axis
        _features[5] = y - _features[1]; // max_value - last max_value, y axis
        _features[6] = z - _features[2]; // max_value - last max_value, z axis


        _features[0] = x; // x axis
        _features[1] = y; // y axis
        _features[2] = z; // z axis

        _features[7] = sqrt(sq(x) + sq(y) + sq(z)); // max_value module

        _features[8] = sqrt(sq(_features[4]) + sq(_features[5]) + sq(_features[6])); // module 'acc subtraction'

        _features[9] = x * x * x; // max_x cubed (X**3)

        _features[10] = sq(_features[4]); //  (max_value - last max_value) squared, x axis

        _features[11] = sq(_features[6]); //  (max_value - last max_value) squared, z axis

        _features[12] = sq(_features[8]); // module 'acc subtraction' squared

        _features[13] = pow(e, _features[4]); // exp(max_x - last max_x)

        _initialized = false;

        _normalizeFeatures();
    }
}

void InputHandler::_normalizeFeatures() {
    for(int i = 0; i < kFeatureCount; i++)
        _features[i] = (_features[i] - _normalizer[i*2]) / (_normalizer[i*2+1] - _normalizer[i*2]);
}

void InputHandler::popullateModelInput(int8_t* input) {
    for(int i = 0; i < kFeatureCount; i++)
        input[i] = _quantize(_features[i]);
}

int8_t InputHandler::_quantize(float val) {
    int8_t ret = val / _scale + _zeroPoint;
    return ret;
}

bool InputHandler::isInitialized() {
    return _initialized;
}

InputHandler::~InputHandler() {}
