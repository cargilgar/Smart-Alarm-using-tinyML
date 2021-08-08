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

#ifndef TENSORFLOW_LITE_MICRO_SMART_ALARM_CONSTANTS_H_
#define TENSORFLOW_LITE_MICRO_SMART_ALARM_CONSTANTS_H_

#include <stdint.h>
/*
Index(['X', 'Y', 'Z', 'Heart Rate', 'movement_x', 'movement_y', 'movement_z',
       'modulo', 'modulo_movement', 'X**3', 'movement_x**2', 'movement_z**2',
       'modulo_movement**2', 'exp_movement_x', 'Labels'],
      dtype='object')
*/

// TensorFlow
constexpr int kTensorArenaSize = 2*1024;

// --- Arduino constants
constexpr uint8_t kLabelCount = 5;
constexpr uint8_t kFeatureCount = 14;

constexpr uint16_t kTimeInterval = 1000;  // [ms]

// --- Mathematical and physical constants
constexpr float e = 2.71828;
constexpr float g = 9.807;

#endif  // TENSORFLOW_LITE_MICRO_SMART_ALARM_CONSTANTS_H_
