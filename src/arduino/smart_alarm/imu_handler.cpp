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

#include "imu_handler.h"

TfLiteStatus setupIMUSensor() {
    TfLiteStatus status = (!IMU.begin()) ? kTfLiteError : kTfLiteOk;

    return status;
}

void readAccelerometer(float* arr, tflite::ErrorReporter* error_reporter, bool msgVerbose) {
    float x, y, z;

    float max_x = 0;
    float max_y = 0;
    float max_z = 0;

    if(msgVerbose)
        TF_LITE_REPORT_ERROR(error_reporter, "Measuring accelerometer.\n");

    unsigned long lastReportTime = millis();

    // Read accelerometer measurements during kTimeIMUInterval
    while(millis() - lastReportTime < kTimeIMUInterval) {
        IMU.readAcceleration(x, y, z);

        // Max value for each axis in 1 second and scale to m/s2
        if(abs(x) > abs(max_x))
            max_x = abs(x) * g;

        if(abs(y) > abs(max_y))
            max_y = abs(y) * g;

        if(abs(z) > abs(max_z))
            max_z = abs(z) * g;
    }

    arr[0] = max_x;
    arr[1] = max_y;
    arr[2] = max_z;
}
