#=====================================================================
#Subrutine: run_analysis.R
#Author: IR
#Date: 18/09/2014
#Revision: 0
#Notes: This script aims to get the data and perform tidy operations in order to get the requested data sets
# Steps proposed in Coursera description have been followed in a slightly different order
# For further information, please check the files CodeBook.R and README.R
#=====================================================================

#Downloading the file
fileUrl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./GCData_Project.zip")

#Unzipping the file
unzip("./GCData_Project.zip")

#Let´s set the working directory
setwd("./UCI HAR Dataset")

#Load train data
X_train<-read.table("./train/X_train.txt")
s_train<-read.table("./train/subject_train.txt")
y_train<-read.table("./train/y_train.txt")
#Merge the train data using cbind() function
train_df<-cbind(X_train,s_train,y_train)

#Load test data
X_test<-read.table("./test/X_test.txt")
s_test<-read.table("./test/subject_test.txt")
y_test<-read.table("./test/y_test.txt")
#Merge the test data using cbind() function
test_df<-cbind(X_test,s_test,y_test)

#Merge the train and test data frames
data<-rbind(train_df,test_df)  # Step1

#Names for columns (variables)
features<-read.table("./features.txt")
var_names<-c(as.vector(features[,2]),c("Subject","Activity (#Ref)"))
colnames(data)<-var_names  # Step4

# Extract relevant variables: mean and st.dev
#I consider the relevant columns the ones with less process data:
# Body acceleration (1-6), Gravity acceleration (41-46) and Body gyroscope data (121-126)
cdata<-c(1:6,41:46,121:126,562,563) #auxiliar vector with the columns of interest and "subject" and "activity" columns
data_filt<-data[,cdata] #Step2

# Names for the activities
activities<-read.table("./activity_labels.txt")
act_names<-activities[,2]
act_lvl<-activities[,1]
Activity_Name<-act_names[match(data_filt[,20],act_lvl)]
data_filt<-data_filt[,1:19]
DataSet1<-cbind(data_filt,Activity_Name) #Activity_Name is automatically set as name for the new column ; #Step3

#Save the tidy data set in a file (.txt)
write.table(DataSet1,file="./output_DataSet1.txt")

# Create a second tidy data set
dset.x<-subset(DataSet1,select=-c(Subject,Activity_Name))
dset.s<-subset(DataSet1,select=c(Subject,Activity_Name))
DataSet2<-aggregate(dset.x,dset.s,mean)

#Save the tidy data set in a file (.txt)
write.table(DataSet2,file="./output_DataSet2.txt",row.name=FALSE)
