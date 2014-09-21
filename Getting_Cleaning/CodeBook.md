==================================================================
## John Hopkins University -Data Science Specialization - Coursera
##Getting and Cleaning Data: Course Project
=================================================================
####Author: Ignacio Rivero
####Date: 17/09/2014
==================================================================

### Introduction
The code book aims to describe the data, the variables and the operations performed.

### Variables
The original data set contains 561 variables related to the measurements and its operations, besides the variable "Subject" and the variable "Activity".

After processing the data the variables shown in the file output_DataSet2.txt are:

* 1 Subject: Subject reference number (1 to 30)
* 2 Activity_Name: Activity label name (walking, walking upstairs, walking downstairs, sitting, standing and laying)
* 3 tBodyAcc-mean()-X: 
* 4 tBodyAcc-mean()-Y
* 5 tBodyAcc-mean()-Z
* 6 tBodyAcc-std()-X
* 7 tBodyAcc-std()-Y
* 8 tGravityAcc-mean()-X
* 9 tGravityAcc-mean()-Y
* 10 tGravityAcc-mean()-Z
* 11 tGravityAcc-std()-X
* 12 tGravityAcc-std()-Y
* 13 tGravityAcc-std()-Z
* 14 tBodyGyro-mean()-X
* 15 tBodyGyro-mean()-Y
* 16 tBodyGyro-mean()-Z
* 17 tBodyGyro-std()-X
* 18 tBodyGyro-std()-Y
* 19 tBodyGyro-std()-Z

The variable "Activity_Name" is obtained based in the information stored in activity_labels.txt, in the original data set.

### Data
The original data set is formed by:

- 'features_info.txt': Shows information about the variables used on the feature vector. 

- 'features.txt': List of all features. (561 obs. and 2 var.)

- 'activity_labels.txt': Links the class labels with their activity name. (6 obs. and 2 var.)

- 'train/X_train.txt': Training set. ()

- 'train/y_train.txt': Training labels. ()

- 'test/X_test.txt': Test set. ()

- 'test/y_test.txt': Test labels. ()

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

Note: The data in folders "Inertial Signals" have not been used

### Operations
The main operations have been:

* Merge train data set (X_train.txt) with the subject (subject_train.txt) and activity information (y_train) in one data frame
* Merge test data set (X_test.txt) with the subject (subject_test.txt) and activity information (y_test) in one data frame
* Merge the aforementioned data frame created in one gathering all the data
* Select the relevant variables, plus the Subject and Activity
* Create a new vector called Activity_Name which places ++++++
* Subset the data frame to remove the column Activity and add the column Activity_Name
* Calculate the average value of the selected measurement variables for each subject and each activity using by() function


























==================================================================

Acknowledgements:
=================
 - Coursera forums, in particular "David's project FAQ"
