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
///
/// @note `kNormalizationRanges` array contains the *min* and *max* values of
/// each feature generated while normalizing the dataset before training the
/// model. Since our g_model expects the same format, these ranges are included
/// as a way to process the data coming in from the sensors.
///
/// @see [tflite model training](https://github.com/cargilgar/Smart-Alarm-using-tinyML/blob/main/src/colabs/model_training/tflite_model_training_DNN.ipynb "Model Training colab")
///
/// [adjust_threshold.ino](https://github.com/cargilgar/Smart-Alarm-using-tinyML/tree/main/src/arduino/test_hr_sensor/adjust_threshold/adjust_threshold.ino)

#pragma once

#include "Arduino.h"
#include "tensorflow/lite/c/common.h"
#include "tensorflow/lite/micro/micro_error_reporter.h"

// TensorFlow
constexpr int kTensorArenaSize = 2*1024;        /**< Tensor Arena size for allocation of memory for input, output, and intermediate arrays [bytes]. */

// --- Tensor dimensions
constexpr uint8_t kLabelCount = 5;              /**< Number of labels for classification. */
constexpr uint8_t kFeatureCount = 14;           /**< Number of total features from which the model trained upon. */

// --- Time intervals
constexpr uint16_t kTimeIMUInterval = 1000;     /**< Interval time to extract the maximum accelerometer value of each axis. */
constexpr uint16_t kTimeHRInterval = 15000;     /**< Interval time to take an average heart rate measurement. */
constexpr uint16_t kTimeAlarmOn  = 10000;       /**< Interval time the alarm takes after going off. */

constexpr uint16_t kAnalogReadThreshold = 525;  /**< Set threshold for correct measurement (check adjust_threshold.ino)  345. */
constexpr uint16_t kMinIBI = 420;               /**< Minimum Interbeat interval (IBI) [ms]. @note 60s/0.420s = 140 BPMs (BPMs should not be above this in normal heart function) */

// --- Arduino constants
constexpr int kSensorPin = A0;                  /**< Analog input pin for the heart rate sensor. */
constexpr int kMotorPin = 2;                    /**< Digital output for the vibration motor module. */
constexpr int kPasiveBuzzerPin = 3;             /**< Digital output for the buzzer. */
constexpr uint16_t kRingTone = 300;             /**< Frequency for the buzzer. */

constexpr uint8_t kInferenceSequence = 10;      /**< Number of consecutive inferences to ensure a confident prediction . */

// --- Mathematical and physical constants
constexpr float e = 2.71828;                    /**< Euler's number for lograithmic expressions. */
constexpr float g = 9.807;                      /**< Gravity of Earth [m/s2]. */

// --- Data processing
constexpr float kNormalizationRanges[2*kFeatureCount] = {
    0.000946, 3.721512,         // X
    0.001282, 4.222015,         // Y
    0.000763, 3.867004,         // Z
    41.00000, 130.0000,         // HR
    -3.004684, 3.593948,        // mov_x
    -4.114593, 3.901520,        // mov_y
    -3.039902, 2.948822,        // mov_z
    0.987266, 5.876683,         // mod
    0.000000, 5.102600,         // mod_mov
    0.000000, 51.54164,         // X^3
    0.000000, 12.91646,         // mov_x^2
    0.000000, 9.241002,         // mov_z^2
    0.000000, 26.03653,         // m_mov^2
    0.000000, 36.37742          // e(mov_x)
};

// --- Labels
enum LabelStage : uint8_t {
  Wake = 0, N1, N2, N3, REM
};
