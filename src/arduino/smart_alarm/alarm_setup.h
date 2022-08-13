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

/// @file alarm_setup.h

void displayAlarmConfiguration(unsigned long* arrRange);

/// This function calculates the interval time in milliseconds necessary for
/// the microcontroller to know when to start and stop making inferences.
///
/// It gets kStrCurrentTime, kStrWakeUpTime, kTimeRangeAlarm which are set by
/// the user beforehand according to his needs.
///
/// @param arrRange Array to be filled with time to start making inferences (ms)
/// and time to stop (ms), in positions 0 and 1 respectively.
void getWakeUpTimeRange(unsigned long* arrRange);

/// This function converts a string in 24-hour format into the corresponding numeric seconds.
/// As a reference, it considers "00:00" = 0s up to "23:59" = 86400s
///
/// @note The value returned in seconds is needed to make the Arduino aware what time it is
/// compared to its internal clock, which initializes at 0 when the device is powered on.
///
/// @param inputTime Time in 24-hour format.
/// @return acc Equivalent in seconds
///
/// ### Example:
/// ~~~~~~~~~~~~~~~~~~~~~~~~~.cpp
/// charToSeconds("01:00");
/// >>> 3600
/// ~~~~~~~~~~~~~~~~~~~~~~~~~
unsigned long charToSeconds(const char* inputTime);

/// This function converts a given time in seconds into its equivalent in 24-hour format,
/// to display it in a more readable form.
///
/// It accepts from 0s up to 86400s (1 day), being 0 = 00:00 and 86400 = 23:59.
/// If the time given is greater than 86400, it then cycles through the difference.
///
/// @param inputTime Time in seconds.
///
/// ### Example:
/// ~~~~~~~~~~~~~~~~~~~~~~~~~.cpp
/// display24HourFormat(3600);
/// >>> 01:00
/// ~~~~~~~~~~~~~~~~~~~~~~~~~
void display24HourFormat(unsigned long inputTime);
