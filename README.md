# Smart Alarm using Tiny Machine Learning

Smart Alarm using TinyML to take part in the **Call for TinyML edX Projects competition**, carried out by Hadvard University.


## Table of contents

- [Description of the project](#Description-of-the-project)
- [Purpose of the project](#Purpose-of-the-project)


## Purpose of the project

The aim of this project is to develop an alarm system that adjusts the waking up time to the best moment based on data collected from different sensors.

A number of systems already employ Machine Learning (ML) to achieve this goal, but they depend on performing the calculations on external machines (for the time this project started). These systems fall into two categories:

- Wearable devices equipped with different sensors that are directly attached to the user (i.e. bracelet, smartwatch, rings...) which rely upon wireless communication (BLE, WIFI...) so as to transmit this data to another more powerful computer, typically a smart-phone.
- A nightstand-style alarm clock that employs other different sensors which measure remotely the sleep cycles of the user.

While the former gives very reasonable results due to the fact that it has sensors that are in close contact with the user, it suffers from the drawback of a considerable battery drain. Not to mention the need of a stable connectivity for the data transmission. 
Conversely, the latter will not lead to any reliance upon a battery as a power supply. However, the quality of data seems to be more difficult to obtain and more sophisticated components are needed. As a result, these devices are priced much too high, becoming not very appealing to the 'common' user.

In light of the above, this project is mainly focused on conflating the benefits of the abovementioned systems into a feasible solution. In short, we aim to achieve meaningful results and accurate predictions while performing data analysis on a device powered by a battery without the need of a daily/weekly recharge. 


## Description of the project

The variable changes which take place while sleeping can be measured with different mechanisms. One of the most popular ones, Polysomnography (PSG), is the gold standard test for the study of sleep. However, albeit effective, this method is intrusive as well as unfeasible, since an entire especiallized room equipped with sophisticated and expensive machines are required.

A more feasible approach is to try to reduce the number of components used in PSG to bare minimum, in such a way that only the essencial sensors are kept. In this project, we aim to achieve similar results to PSG with only accelerometer and heart rate sensors and with the help of Machine Learning. 

The main idea is to train a neural network model from data gathered in actual PSG and extract meaningful correlations among the sensor data. If with only accelerometer and heart rate data the model proves to distinguish specific patterns for different sleep stages, then it is possible to predict the state of sleep of a user on new fresh data.

(Photo sleep cycles)

A device attached to the body (e.g. a bracelet) intelligently adjusts the exact time to wake the user according to his state of sleep. The user will need to define a time threshold so that the model knows what is the range in which it has room to operate.

For example: the user wishes to wake up at around 8 am and it is okay if the system could trigger the alarm 15 minutes earlier or later. The user will then define a threshold of 30 minutes and the system will know that it can wake the user up at the most appropriate time between 7:45 and 8:15.


## Constraints and challenges 

A major challenge is to shrink down a reasonable ML model (to less than 1 MB of size) that still carries out predictions with high accuracy, low latency and low power consumption.


## Version/Date

29/08/2021


## Expected due date

31/08/2021


## Authors

Carlos Gil García, Daniel Moreno París


## User instructions

In this project, there are three major steps to follow: 

- Collect enough data to train a Machine Learning model: [Genrate Dataset](src/colabs/generate_dataset/)
- Train and convert the model for deployment: [Model training](src/colabs/model_training/)
- Deploy the converted model onto the microcontroller: [Smart Alarm Application](src/arduino/smart_alarm/)

You must follow each of these steps in the same order to follow along this project.


## Disclaimer

For the time being, the main objective of this project is purely for research. All components listed here as well as code or documentation are prototype-wise and not meant to be commercialized.

It is also worth mentioning that the authors of the project are not experts in the field of sleep medicine, thus non-accurate use of terminology or information may be foreseen. Additionally, constructive feedback and suggestions for improvement will be always welcome.


## Future work

BLE to send a daily report to the smart-phone.

The main idea of this is that every time the Arduino is switched on, it starts advertising to establish connection with the phone. Once connected, the user has the option of
This would only require pairing the Arduino with the phone when it is switched on. It then gets synchronyzed getting local time from the phone's system internal clock. The user will have fully control to configure the system as they wish. Then the user can close the app and the Arduino gets disconnected itself helping reduce battery drain. After this, the Arduino can remain switched on for as long as the battery lasts, not having to reset it each night. The user can at any time connect open the app and connect to Arduino.

