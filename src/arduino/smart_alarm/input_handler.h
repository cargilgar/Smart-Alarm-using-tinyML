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

#pragma once

#include "constants.h"

/// @file input_hanlder.h

// This class acts as a container to hold all the data that is going to be input
// into the input Tensor of the model.
//
// It also provides a further level of abstraction by carrying out all the
// calculations needed to generate the features. It takes the raw data, processes
// it, generates the required features by the model, normalizes them and stores
// them until new data comes in, repeating again the process.
class InputHandler
{
public:
    InputHandler(uint8_t arrSize, float paramScale, int zeroPoint);
    InputHandler() = delete;
    ~InputHandler();

    void generateFeatures(float x, float y, float z, float bpm);
    void displayFeatures();
    void popullateModelInput(int8_t* input);
    bool isInitialized();

    float* features = new float[kFeatureCount];

private:
    void _normalizeFeatures();
    /// Converts 32-bit float to 8-bit integer. @returns quantized value int8_t data type.
    int8_t _quantize(float val);

    float _scale;
    int _zeroPoint;
    int _arrSize;
    bool _initialized;

    const float* _normalizer = kNormalizationRanges;

    // float normalizer[2*kFeatureCount] = {
    //     0.0009460000000000001, 3.7215117999999996,
    //     0.0012817 , 4.2220154,
    //     0.0007629 , 3.8670044000000003,
    //     41.0, 130.0,
    //     -3.0046843999999995, 3.5939482999999997,
    //     -4.1145935, 3.9015198,
    //     -3.0399017000000006, 2.9488220000000003,
    //     0.9872664790650293, 5.876683519378206,
    //     0.0, 5.102599946910135,
    //     8.465905360000003e-10, 51.54163618943318,
    //     0.0, 12.916464383072887,
    //     0.0, 9.241002345662894,
    //     0.0, 26.03652621820731,
    //     0.0, 36.37742172835277};
};
