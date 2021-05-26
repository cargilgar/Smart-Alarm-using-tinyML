# Smart Alarm using Tiny Machine Learning

## Description of the project
A device attached to the body (e.g. a bracelet) intelligently adjusts the exact time to wake the user according to his state of sleep. The user will need to define a time threshold so that the model knows what is the range in which it has room to operate.

For example: the user wishes to wake up at around 8 am and it is okay if the system could wake him 15 minutes earlier or later. The user will then define a threshold of 15 minutes and the system will know that it can wake the user up at the most appropriate time between 7:45 and 8:15.


## Purpose of the project:
The aim of this project is to develop an alarm system that adjusts the waking up time to the best moment depending on data gathered from different sensors.

A number of systems already employ Machine Learning (ML) to achieve this goal, but they depend on performing the calculations on external machines (for the time this project started). These systems fall into two categories:

- Wearable devices equipped with different sensors that are directly attached to the user (i.e. bracelet, smartwatch, rings...) which rely upon wireless communication (BLE, WIFI...) so as to transmit this data to another more powerful computer, typically a smart-phone.
- A nightstand-style alarm clock that employs other different sensors which measure remotely the sleep cycles of the user.

While the former gives very reasonable results due to the fact that it has sensors that are in close contact with the user, it suffers from the drawback of a considerable battery drain. Not to mention the need of a stable communication for the data transmission. 
Conversely, the latter will not lead to any reliance upon a battery as a power supply. However, the quality of data seems to be more difficult to obtain and more sophisticated components are needed. As a result, these devices are priced much too high, becoming not very appealing to the 'common' user.

In light of the above, this project is mainly focused on conflating the benefits of the abovementioned systems into a feasible solution. In short, we aim to achieve meaningful results and accurate predictions while performing data analysis on a device powered by a battery without the need of a daily/weekly recharge. 


## Constraints and challenges: 

A major challenge is to shrink down a reasonable ML model (to less than 1 MB of size) that still carries out predictions with high accuracy, low latency and low power consuption.


## Additions and features
BLE to send a daily report to the smart-phone.



## Version/Date: 

26/05/2021	


## Authors

Daniel Moreno París, Carlos Gil García


## User instructions



## Disclaimer

The main objective of this project is purely for research. All components listed here as well as code or documentation are prototype-wise and not meant to be commercialzed.

It is also worth mentioning that the authors of the project are not experts in the field, thus non-accurate use of terminology or information may be foreseen. Additionally, constructive feedback and suggestions for improvement will be always welcome.


