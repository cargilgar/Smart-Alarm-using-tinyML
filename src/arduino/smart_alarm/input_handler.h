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
///
/// @brief Class to process and input the data into the neural network.
///
/// @details This class takes care of all the calculations needed to generate the 
/// features to be fed into the model. It takes the raw data read from the sensors 
/// and processes them based on the dataset the model was trained on (i.e. generating 
/// the features and normalizing). With the resulting array, it then popullates the 
/// Input Tensor for making inference. After this, new data will come in, repeating 
/// again the process.

class InputHandler {
public:
    InputHandler(float paramScale, int zeroPoint);
    InputHandler() = delete;
    ~InputHandler();

    void generateFeatures(float* imu, float bpm);
    void displayFeatures();
    void popullateModelInput(int8_t* input);
    bool isInitialized();

    float features[kFeatureCount] = {};

private:
    void _normalizeFeatures();
    
    /// Converts 32-bit float to 8-bit integer.
    /// @returns quantized value int8_t data type.
    int8_t _quantize(float val);

    float _scale;
    int _zeroPoint;
    int _arrSize;
    bool _initialized;

    const float* _normalizer = kNormalizationRanges;
};
