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

#include "alarm_setup.h"

void displayAlarmConfiguration(unsigned long* arrRange) {
    Serial.println("Smart alarm switched on.");
    Serial.print("\nCurrent time: ");
    Serial.println(kStrCurrentTime);
    Serial.print("\nWake up time: ");
    Serial.println(kStrWakeUpTime);

    Serial.print("\nThe alarm will go off in a range from ");
    display24HourFormat(charToSeconds(kStrCurrentTime) + arrRange[0]/1000);
    Serial.print(" to ");
    display24HourFormat(charToSeconds(kStrCurrentTime) + arrRange[1]/1000);
    Serial.println(" looking for the most pleasant moment.");
    Serial.println("\nGood night :)\n");
}

void getwakeUpTimeRange(unsigned long* arrRange) {

    unsigned long time1 = charToSeconds(kStrCurrentTime);
    unsigned long time2 = charToSeconds(kStrWakeUpTime);

    // Add 24 hours (86400s) when time2 is the next day.
    // For example: (time1 = 23:00, time2 = 07:00)
    if(time1 > time2)
        time2 += 86400;

    arrRange[0] = (time2 - time1 - kTimeRangeAlarm * 60 / 2) * 1000;
    arrRange[1] = (time2 - time1 + kTimeRangeAlarm * 60 / 2) * 1000;
}

unsigned long charToSeconds(const char* inputTime) {

    unsigned long acc = 0;

    acc += (time[0] - '0') * 36000;
    acc += (time[1] - '0') * 3600;
    acc += (time[3] - '0') * 600;
    acc += (time[4] - '0') * 60;

    return acc;
}

void display24HourFormat(unsigned long inputTime) {

    int minutes, hours;

    if(inputTime > 86400)
        inputTime -= 86400;

    minutes = inputTime / 60;
    hours = minutes / 60;

    Serial.print(int(hours));
    Serial.print(":");
    Serial.print(int(minutes % 60));
}
