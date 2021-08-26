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

/// @file model.h
///
/// @brief This file contains the model in a C-format array.
///
/// @details. The *.tflite* model has been handed to a Flattbuffer compiler that
/// creates C++ code to access the data held in the serialised byte array.
///
/// @see [FlatBuffers](https://google.github.io/flatbuffers/ "FlatBuffers Overview")

extern const unsigned char smart_alarm_model[];
extern const int smart_alarm_model_len;
