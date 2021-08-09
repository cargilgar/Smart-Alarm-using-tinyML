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
/// @brief This file contains all the constant parameters used throughout the source files.
///
/// @details More details here.
///
/// @see [tflite model training](https://github.com/cargilgar/Smart-Alarm-using-tinyML/blob/main/src/colabs/model_training/tflite_model_training_DNN.ipynb "Model Training colab")
///
/// @note Index(['X', 'Y', 'Z', 'Heart Rate', 'movement_x', 'movement_y',
/// 'movement_z', 'modulo', 'modulo_movement', 'X**3', 'movement_x**2',
/// 'movement_z**2', 'modulo_movement**2', 'exp_movement_x', 'Labels']).


#ifndef TENSORFLOW_LITE_MICRO_SMART_ALARM_CONSTANTS_H_
#define TENSORFLOW_LITE_MICRO_SMART_ALARM_CONSTANTS_H_

#include <stdint.h>

// TensorFlow
constexpr int kTensorArenaSize = 2*1024;    /**< Tensor Arena size for allocation of memory for input, output, and intermediate arrays [bytes]. */

// --- Arduino constants
constexpr uint8_t kLabelCount = 5;           /**< Number of labels for classification. */
constexpr uint8_t kFeatureCount = 14;       /**< Number of total features from which the model trained upon. */
constexpr uint8_t kNumSamples = 75;

constexpr uint8_t kNumTests = kNumSamples/kLabelCount;

constexpr uint16_t kTimeInterval = 1000;    /**< Time interval for accelerometer measurement [ms]. */

#endif  // TENSORFLOW_LITE_MICRO_SMART_ALARM_CONSTANTS_H_
