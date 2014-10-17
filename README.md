#TidyData
========

##Tidy Data Project - Data Science (Getting and Cleaning Data)

This repo contains 2 files:
* 1- run_analysis.R is a script that will read data in the current working directory (All data is in a directory called 
UCI HAR Dataset),and then:

  1. Merges the training and the test sets to create one data set.
  2. Extracts only the measurements on the mean and standard deviation for each measurement. 
  3. Uses descriptive activity names to name the activities in the data set
  4. Appropriately labels the data set with descriptive variable names. 
  5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

* 2- CodeBook.md contains details on the variables and the transformations performed.


The code works like this....

* Reads the features names from file features.txt
* Reads activity codes from file activity_labels.txt
* Reads Training Dataset (Read from 3 different files into 3 data frames: subject_train.txt (code for the individual who participated in the study), y_train.txt (code for the activity level) and X_train (data collected in the analysis)
* 
