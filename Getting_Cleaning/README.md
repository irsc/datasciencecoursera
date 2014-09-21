 ==================================================================
## John Hopkins University -Data Science Specialization - Coursera
##Getting and Cleaning Data: Course Project
 =================================================================
#### Author: Ignacio Rivero
####Date: 17/09/2014
 ==================================================================

### Introduction

This script (run_analysis.R) aims to get the relevant data, tidy it and extract the variables.

The original data provides the following information from the experiment performed (after README.txt in the original data set): "The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. "


This repo includes the following files:
* README.md
* CodeBook.md : Description of the variables
* run_analysis.R: Script performing the analysis

### Assumptions

* The script assume you do not have the data required for the analysis 
 -> Action: the data is downloaded from the link: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

* The script extracts the variables considered relevant: the mean and standard deviation of the less processed variables. In this particular case the variables selected have been:Body Acceleration, Gravity Acceleration and Body Gyroscope. The columns in the original data set are (1-6), (41-46) and (121-126) respectively.

* In general, it is assumed you are familiar with the original data set. Please, check the README.txt file included in the data set downloaded and the CodeBook.md. 


### Description of the script

1) Downloading the data:
Using the url address and the download.file() the file (zip file) is downloaded in the initially selected working directory.
2) Unzipping the files:
The function unzip() is used to extract the files into the currect folder
3) Working directory: 
The working directory is selected inside the extracted folder, called "UCI HAR Dataset". Please, remember that the outfiles will be saved inside this folder!
4) Load train data: Using read.table() function, the files are readed and loaded.
5) Merge the train data using cbind() function:
The dataframe and vectors loaded are merged by columns. train_df (563 variables and 7342 obs.) data frame is created.
6) Same sequence (5)&(6) is repeated for test data. test_df (563 variables and 2947 obs.) data frame is created.
7) Merge test_df and train_df in one data frame: In this case rbind() function is used. data (563 variables and 10299 obs.) data frame is created.
8) Names for columns: using the variable names stored in the file features.txt, names are assigned using colnames() function. Since the variable names Subject and Activity are not included, these are included using an auxiliar vector var_names and merging there the names from features.txt and Subject and Activity.
9) Subsetting the relevant columns, including the last two columns (Subject and Activity). data_filt (19 variables and 10299 obs.) is created.
10) Names for the activities: 

### Example 

> setwd("./Data_Science_Coursera/Scripts/get_clean_data")  #Set your initial working directory
> source("run_analysis.R")
trying URL 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
Content type 'application/zip' length 62556944 bytes (59.7 Mb)
opened URL
downloaded 59.7 Mb

In the folder of the downloaded data set you will find you new .txt files: output_DatSet1.txt and outputSet2.txt.






















==================================================================

##Acknowledgements:
=================
 * Coursera forums, in particular "David's project FAQ"
