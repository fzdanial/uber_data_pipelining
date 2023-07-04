# Uber Data Pipeline Project

This project is done to act as a simple showcase of my technical abilities in data architecture, and pipelining. Do note that the analytics portion of this project is simply a basic showcase of what can be done. There are plenty more possibilities that can be done, and the analysis can be done deeper. My intention for this is to only show my abilities in creating a pipeline and data architecture. For data analytical project examples, do look at other data analytics projects. 

## Project Description
This project was hosted via Google Cloud Platform. As the platform only has a trial period of 90 days, there might be a chance that the project has been permanently deleted from the platform. 

I have however attached all the files related to this project in the repository. 

### 1.1 Python Notebook
The initial step of this project was to load, understand and transform the data. This can be referred to the <a href="https://github.com/fzdanial/uber_data_pipelining/blob/main/Uber_Data_Pipeline_Project.ipynb" target="_blank">Uber_Data_Pipeline_Project.ipynb</a> file.

The goal during this step was to create a data architecture that resembles the following:
![Uber Data Model](https://github.com/fzdanial/uber_data_pipelining/assets/61125794/b53a9c7f-6bc0-40ad-a9e3-c3adb3db3c2a)

### 1.2 Setting up ETL
This process was done via a virtual machine instance on Google Cloud Platform, which was routed to <a href="https://www.mage.ai/" target="_blank">Mage AI</a>. This package allows for a more easy ETL process, in which all the skeleton structure for the ETL are ready, and we are able to basically plug and play the code we have previously created in step 1.1.

The files that were created during this process can be seen below:
  - <a href="https://github.com/fzdanial/uber_data_pipelining/blob/main/pipelining/data_loader.py" target="_blank">Extract</a>
  - <a href="https://github.com/fzdanial/uber_data_pipelining/blob/main/pipelining/data_transformer.py" target="_blank">Transform</a>
  - <a href="https://github.com/fzdanial/uber_data_pipelining/blob/main/pipelining/data_bigquery_load.py" target="_blank">Load</a>

The ETL tree structure should look as follows:
![Screenshot 2023-07-04 at 5 04 34 PM](https://github.com/fzdanial/uber_data_pipelining/assets/61125794/c970d818-7f35-4d3f-9b89-27cb4ca9e255)

Do note also, that for the loading part, we loaded up the data into Big Query. 

### 1.3 Big Query
