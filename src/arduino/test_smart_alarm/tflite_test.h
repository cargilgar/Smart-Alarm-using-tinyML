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

/// @file tflite_test.h
///
/// @brief This file provides a series of functions to test the model and its
/// tensors have been initialized properly with the expected parameters.

/// Checks the input tensor is initialized, has the correct size and type.
void testInputTensor(tflite::ErrorReporter* error_reporter, TfLiteTensor* input_tensor);

/// Checks the output tensor has the correct size and type after inference.
void testOutputTensor(tflite::ErrorReporter* error_reporter, TfLiteTensor* output_tensor);
