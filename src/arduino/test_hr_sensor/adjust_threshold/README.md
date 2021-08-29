# Adjust Threshold.ino

This application is purely intended to assess the sensitivity of the heart rate sensor as explained in [Before you deploy](../../smart_alarm/README.md#Before-you-deploy).


## Instructions

1. Open the Project in the Arduino IDE.
2. Make sure you connect the sensor to the same analog pin as in the code.
3. Compile and Upload to the device.
4. Click on `Serial Plotter` under the Tools tab or press `Ctrl+Shift+L`.
5. With the sensor attached to your skin, wait a little bit until the Plotter gets stabilized and select an approximate threshold based on the waveform.

As an example, in the following picture a decent threshold might be 525.

![image info](../../../media/adjust-threshold-example.jpg)
