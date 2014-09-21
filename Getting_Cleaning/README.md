 ==================================================================
## John Hopkins University -Data Science Specialization - Coursera
##Getting and Cleaning Data: Course Project
 =================================================================
### Author: Ignacio Rivero
###Date: 17/09/2014
 ==================================================================

### Introduction

This script (run_analysis.R) aims to get the relevant data, tidy it and extract the variables.

The original data provides the following information from the experiment performed (after README.txt in the original data set ):
"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. "


This repo includes the following files:
* README.md
* CodeBook.md : Description of the variables
* run_analysis.R: Script performing the analysis

### Assumptions

* The script assume you do not have the data required for the analysis 
 -> Action: the data is downloaded from the link: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

* The script extracts the variables considered relevant: the mean and standard deviation of the less processed variables. In this particular case the variables selected have been:Body Acceleration, Gravity Acceleration and Body Gyroscope.

* In general, it is assumed you are familiar with the original data set. Please, check the README.txt file included in the data set downloaded. 


### Description of the script



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
