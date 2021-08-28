# Generate Dataset Colab

The original dataset, which can be downloaded from here [link](https://www.physionet.org/content/sleep-accel/1.0.0/ "Physionet"), comes with the different types of data located in different folders and in `.txt` format. In order to fulfil the requirements for this TinyML project, it is necessary to conflate this data together. This also helps to convert it to a `.csv` format which is more manageable. Moreover, while putting together the data, some pre-processing is also carried out so as to generate a structure and a ready-to-use dataset.


## Table of contents

- [Steps followed by this program](#Steps-followed-by-this-program)
- [Running the program on Colab](#Running-the-program-on-Colab)
- [Running the program on Jupyter Notebook](#Running-the-program-on-Jupyter-Notebook)
- [Generating your tailored dataset](#Generating-your-tailored-dataset)



## Steps followed in this Colab

* Download and unzip the dataset into its corresponding directory.
* Load the `.txt` files.
* Merge the files from each user into one dataframe.
* Export the resulting dataframe to `.csv`.
* Repeat the process for all the users.
* Download all `.csv` files in `.zip` format.


## Running the program on Colab

Upload `generate_dataset.ipynb` to your Google Drive and open it from the web-browser within the Google Drive page. 

Once you've opened the file, to generate your custom dataset out of the original one, simply run all the cells in this Colab. You do this by clicking the `run all` option in the Runtime tab or pressing `Ctrl+F9`.


## Running the program on Colab

To run the program locally in a Jupyter Notebook, you need to connect Google Colab to a Local Jupyter Runtime. To do this, please go to this [tutorial](https://research.google.com/colaboratory/local-runtimes.html "Google Colaboratory") which explains thoroughly how to set it up. 

Once that's done, just click `run all` under the `Cell` tab.


## Generating your tailored dataset

By default, this program will produce a labelled dataset containing accelerometer and heart rate values **every second for each user**. The main reason we believe this one-second interval would work well is because of the nature of this application. Since we are especially interested in detecting changes among sleep cycles and these usually happen gradually, we don't want to keep every single datapoint recorded. Instead, we want to compact these to time intervals, collecting only the peak values which add more meaningful value to the dataset.

However, if you wish to take the accelerometer peak values with different time intervals, change the argument `interval` of `generate_all_datasets()` to whatever value you prefer. Keep in mind that the smaller the value of this interval, the larger (and less diverse) the dataset will be, potentially negatively affecting the learning result of the neural network.

**Note**: Although you can modify the rest of the parameters in this Colab to your own taste, we recommend that you leave these untouched.


### Use example:
~~~~~~~~~~~~~~~~~~~~~~~~~.py
generate_all_datasets(interval=0.25, verbose=True)  # Getting peak values every 250 ms. 
~~~~~~~~~~~~~~~~~~~~~~~~~

## Additional information

All the `.csv` files will be downloaded automatically in a `.zip` file. Since the files to work with are fairly large, this process may take up to 10 minutes, depending on the machine. The time it takes for each dataset to complete is printed to get some feedback of the progress (set verbose to `false` in `generate_all_datasets()` if you don't want to get this information).
