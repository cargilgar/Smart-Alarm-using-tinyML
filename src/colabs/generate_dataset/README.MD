# Introduction

The original dataset, which can be downloaded from here [link](https://www.physionet.org/content/sleep-accel/1.0.0/), comes with the different types of data located in different folders and in `.txt` format. In order to fulfil the requirements for this TinyML project, it is necessary to conflate this data together. This also helps to convert it to a `.csv` format which is more manageable. Moreover, while putting together the data, some pre-processing is also carried out so as to generate a structure and a ready-to-use dataset.


# Generate dataset instructions

To generate our custom dataset out of the original one, simply run all the cells in this Colab. You do this by clicking the `run all` option in the Runtime tab or pressing `Ctrl+F9`.

All the `.csv` files will be downloaded automatically in a `.zip` file. Since the files to work with are fairly large, this process may take up to 10 minutes, depending on the machine. The time it takes for each dataset to complete is printed to get some feedback of the progress (set verbose to `false` in `generate_all_datasets()` if you don't want to get this information).

If you wish to take the accelerometer peak values from different time intervals (by default is set to 1 second), change the argument `interval` of `generate_all_datasets()` to whatever value you prefer. Keep in mind that the smaller the value of this interval, the larger (and less diverse) the dataset will be.

Although you can modify the rest of the parameters in this Colab to your own taste, we recommend that you leave these untouched.


### Example:
~~~~~~~~~~~~~~~~~~~~~~~~~.py
generate_all_datasets(interval=0.25, verbose=True)  // Getting peak values every 250 ms. 
~~~~~~~~~~~~~~~~~~~~~~~~~
