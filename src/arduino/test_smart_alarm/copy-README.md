# Test Smart Alarm

Test Smart Alarm is meant to be used as a working example to check that the model converted works properly once deployed on Arduino.


## Table of contents

- [Detailed description](#Detailed-description)
- [Dependencies](#Dependencies)
- [Instructions](#Instructions)
- [Additional notes](#Additional-notes)


## Detailed description

test_smart_alarm.ino carries out a series of tests to verify that the input and output tensors have been initialized with the correct properties, 
such as their and data types.

Additionally, the device will perform a sequence of inferences to test its accuracy over real data. This is done by taking data located in data_samples.h, 
which have been collected randomly from the same dataset used for training the model. The tflite model will simply take each of the samples, run an inference 
on that data and check if the result is the same as the corresponding label. After running all the inferences, the correct predicted labels will be compared 
with the overall samples to see how well it has done it.


## Dependencies

Additional dependecies to install needed for this application to run.

### Libraries

- Arduino_TensorFlowLite (Recommended version: 2.4.0-ALPHA).

### Boards (in the case of deploying to the Arduino BLE 33 Sense)

- Arduino MBED OS Nano Boards (Minimum version: 2.3.1). 


## Instructions

1. Open the Project in the Arduino IDE.
2. Copy and paste the `.txt` files generated in [tflite_model_training_DNN.ipynb](../../colabs/model_training/tflite_model_training_DNN.ipynb) under the `/mcu` directory generated in the Colab.

    * Copy the array saved in `data_samples.txt` and paste it to the array `samples` in `data_samples.h`.

3. Install the dependencies listed in `Boards Manager` and `Library Manager` sections.
4. Select the correct board and port.
5. Compile and Upload to the device.
6. With the correct port selected, open the `Serial Monitor` by pressing `Ctrl+Shift+M` and follow the instructions listed.
(Note that the tests will not start until the monitor has been opened).


## Additional notes

This file is intended to be compiled in the Arduino IDE and flashed to the Arduino microcontroller. Although these tests could be readily carried out in a computer by downloading the TensorFlow source code, we have chosen to do the tests on the actual hardware where the final working code will be deployed. By doing so, we ensure all the necessary components for running inferences do what we expect to do and the microcontroller does not behave unexpectedly, killing two birds with one stone.