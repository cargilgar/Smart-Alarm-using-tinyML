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

#include "Arduino.h"
#include "tensorflow/lite/c/common.h"
#include "tensorflow/lite/micro/micro_error_reporter.h"
// #include "tensorflow/lite/micro/testing/micro_test.h"

/// @file constants.h
///
/// @brief This file contains all the constant parameters used throughout the
/// source files.

// TensorFlow
constexpr int kTensorArenaSize = 2*1024;    /**< Tensor Arena size for allocation of memory for input, output, and intermediate arrays [bytes]. */

// --- Tensor dimensions
constexpr uint8_t kLabelCount = 5;          /**< Number of labels for classification. */
constexpr uint8_t kFeatureCount = 14;       /**< Number of total features from which the model trained upon. */

// --- Test
constexpr uint16_t kSamplesLength = 15000;  /**< Total length of array containing the samples. */
constexpr uint16_t kNumTests = kSamplesLength/(kFeatureCount + 1); /**< Number of inferences the model is going to carry out for the testing. */
