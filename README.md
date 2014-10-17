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
* Reads Training Dataset (Reads from 3 different files into 3 data frames: subject_train.txt (code for the individual who participated in the study), y_train.txt (activity level is stored instead of code) and X_train (data collected in the analysis).  These 3 data sets are then merged into a single dataset called all_data_train.
* Reads Test Dataset (Reads from 3 different files into 3 data frames: subject_test.txt (code for the individual who participated in the study), y_test.txt (activity level is stored instead of the code) and X_test (data collected in the analysis). These 3 data sets are then merged into a single dataset called all_data_test.
* In data frames for the data collected from files (X.train and X.test), the variable names stored in the features file are assigned as column names (instead of variables V1,V2, etc, we use the actual variable names that were given to us in file features.txt.
* Now we merge the 2 complete datasets: all_data_train and all_data_test into a final complete dataset.
* We need to select now the variables of interest: The Subject, The activity level, and all the variables that contain "mean()" and "std()" in the name.
* The resulting dataset has 88 columns.  86 feature variables for means and standard deviations plus the subject and the activity level columns
* This resulting dataset is then grouped by Suject and Activity Level so that we obtain the final dataset with the means by subject by activity level. This summarized dataset is stored in a txt file.
