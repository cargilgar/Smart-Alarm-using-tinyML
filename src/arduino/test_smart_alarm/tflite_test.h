#pragma once

#include "constants.h"

/// @file tflite_test.h
///
/// @brief This file provides a series of functions to test the model and its
/// tensors have been initialized properly with the expected parameters.

/// Check the model has been converted with a compatible tflite converter version
//void checkModelVersion(tflite::ErrorReporter* error_reporter, const tflite::Model* model);

/// Checks the input tensor is initialized, has the correct size and type.
void testInputTensor(tflite::ErrorReporter* error_reporter, TfLiteTensor* input_tensor);

/// Checks the output tensor has the correct size and type after inference.
void testOutputTensor(tflite::ErrorReporter* error_reporter, TfLiteTensor* output_tensor);
