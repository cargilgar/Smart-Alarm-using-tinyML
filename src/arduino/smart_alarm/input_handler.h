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

/// @file input_handler.h
///
/// @brief Class to process and input the data into the neural network.
///
/// @details This class takes care of all the calculations needed to generate the
/// features to be fed into the model. It takes the raw data read from the sensors
/// and processes them based on the dataset the model was trained on (i.e. generating
/// the features and normalizing). With the resulting array, it then populates the
/// Input Tensor for making inference. After this, new data will come in, repeating
/// again the process.

class InputHandler {
public:
    InputHandler(float paramScale, int zeroPoint);
    /// Avoid the use of default constructor, _scale and _zeroPoint needed to
    /// apply quantization within the InputHandler object.
    InputHandler() = delete;
    ~InputHandler();

    /// Generate the derived features to produce the same data as the dataset,
    /// which is how the model was trained on.
    ///
    /// @param imu Array containing x, y and z values coming from the imu sensor.
    /// @param bpm Value obtained from the heart rate sensor.
    ///
    /// @see imu_handler.cpp heart_rate_handler.cpp
    void generateFeatures(float* imu, int bpm);

    /// Fill the Input Tensor of the neural network with the values contained
    /// within `features`.
    ///
    /// @param input Input Tensor to be filled before making the next inference.
    void populateModelInput(int8_t* input);
    bool isInitialized();

private:
    /// Apply normalization to each feature based on kNormalizationRanges defined
    /// in constants.h.
    void _normalizeFeatures();

    /// Converts 32-bit float to 8-bit integer.
    /// @returns quantized value int8_t data type.
    int8_t _quantize(float val);

    float _scale;
    int _zeroPoint;
    bool _initialized;

    float _features[kFeatureCount];  /**< Container holding the data to be input to the model. */
    const float* _normalizer = kNormalizationRanges;  /**< Pointer to the array kNormalizationRanges holding the respective normalizing values. */
};
