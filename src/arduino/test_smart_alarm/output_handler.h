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

#ifndef TENSORFLOW_LITE_MICRO_SMART_ALARM_OUTPUT_HANDLER_H_
#define TENSORFLOW_LITE_MICRO_SMART_ALARM_OUTPUT_HANDLER_H_

#include "tensorflow/lite/c/common.h"
#include "tensorflow/lite/micro/micro_error_reporter.h"
#include "Arduino.h"
#include "constants.h"

int8_t recognizeLabel(int8_t* arr, bool msgVerbose);

#endif  // TENSORFLOW_LITE_MICRO_SMART_ALARM_OUTPUT_HANDLER_H_