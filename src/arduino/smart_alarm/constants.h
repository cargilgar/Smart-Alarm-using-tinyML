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

/// @file constants.h
///
/// @brief This file contains all the constant parameters used throughout the
/// source files.

#pragma once

#include <stdint.h>

// TensorFlow
constexpr int kTensorArenaSize = 2*1024;    /**< Tensor Arena size for allocation of memory for input, output, and intermediate arrays [bytes]. */

// --- Tensor dimensions
constexpr uint8_t kLabelCount = 5;          /**< Number of labels for classification. */
constexpr uint8_t kFeatureCount = 14;       /**< Number of total features from which the model trained upon. */

// --- Mathematical and physical constants
constexpr float e = 2.71828;                /**< Euler's number for lograithmic expressions. */
constexpr float g = 9.807;                  /**< Gravity of Earth [m/s2]. */

// --- 
constexpr float kNormalizationRanges[2*kFeatureCount] = {
    0.000946, 3.721512,
    0.001282, 4.222015,
    0.000763, 3.867004,
    41.00000, 130.0000,
    -3.004684, 3.593948,
    -4.114593, 3.901520,
    -3.039902, 2.948822,
    0.987266, 5.876683,
    0.000000, 5.102600,
    0.000000, 51.54164,
    0.000000, 12.91646,
    0.000000, 9.241002,
    0.000000, 26.03653,
    0.000000, 36.37742
};
