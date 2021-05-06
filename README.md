# Smart-Alarm-using-tinyML

## Purpose of the project:
The aim of this project is to develop an alarm system that adjusts the waking up time to the best moment depending on data gathered from different sensors.

There are several systems that employ already Machine Learning (ML) to achieve this goal, but they rely upon performing the calculations on external machines. These systems fall into two categories:

- Wearable devices equipped with different sensors that are directly attached to the user (i.e. bracelet, smartwatch, rings...) which rely upon a stable wireless communication (BLE, WIFI...) so as to transmit this data to another more powerful computer, typically a smart-phone.
- A nightstand-style alarm clock that employs other different sensors which measure remotely the sleep cycles of the user.

While the former gives very reasonable results due to the fact that it has sensors that are in close contact with the user, it suffers from the drawback of a considerable battery drain. Not to mention the need of a stable communication for the data transmission. 
Similarly, the latter will not lead to any reliance upon a battery as a power supply, the quality of data seems to be more difficult to record. As a result, these devices are priced much too high, becoming not very appealing to the 'common' user.

In light of the above, this project is mainly focused on conflating the benefits of the abovementioned systems into a feasible solution: achieve meaningful results while performing data analysis on device. 


## Constraints and challenges: 

A major challenge is to shrink down a reasonable ML model (to less than 1 MB of size) that still performs predictions with high accuracy, low latency and low power consuption.



## Version/Date: 

06/05/2021	


## Authors

Daniel Moreno París, Carlos Gil García


## User instructions



## Disclaimer

The main objective of this project is purely for research. All components listed here as well as code or documentation are prototype-wise and not meant to be commercialzed.

It is also worth mentioning that the authors of the project are not experts in the field, thus non-accurate use of terminology or information may be foreseen. Additionally, constructive feedback and suggestions for improvement will be always welcome.


