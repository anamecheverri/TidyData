#Tidy Data Project

## Original Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 


Attribute Information:

For each record in the dataset it is provided: 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label (1:6)
- An identifier of the subject who carried out the experiment (1:30)

Out of the 561 features in th evector given, only 86 columns are used: those with mean and standard deviation calculations. Together, with the activity level and the indentifier, they make out the 88-variable resulting dataset.
This dataset is further summarized calculating the mean for each subject, and each activity level.

The variables in the final dataset are:

Subject:  Identifies the subject in the test: integer from 1 to 30

Activities: 6 levels of activities: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.

86 features:

tBodyAcc-mean()-X

tBodyAcc-mean()-Y

tBodyAcc-mean()-Z
tGravityAcc-mean()-X
tGravityAcc-mean()-Y
tGravityAcc-mean()-Z
tBodyAccJerk-mean()-X
tBodyAccJerk-mean()-Y
tBodyAccJerk-mean()-Z
tBodyGyro-mean()-X
tBodyGyro-mean()-Y
tBodyGyro-mean()-Z
tBodyGyroJerk-mean()-X
tBodyGyroJerk-mean()-Y
tBodyGyroJerk-mean()-Z
tBodyAccMag-mean()
tGravityAccMag-mean()
tBodyAccJerkMag-mean()
tBodyGyroMag-mean()
tBodyGyroJerkMag-mean()
fBodyAcc-mean()-X
fBodyAcc-mean()-Y
fBodyAcc-mean()-Z
fBodyAcc-meanFreq()-X
fBodyAcc-meanFreq()-Y
fBodyAcc-meanFreq()-Z
fBodyAccJerk-mean()-X
fBodyAccJerk-mean()-Y
fBodyAccJerk-mean()-Z 
fBodyAccJerk-meanFreq()-X
fBodyAccJerk-meanFreq()-Y
fBodyAccJerk-meanFreq()-Z
fBodyGyro-mean()-X
fBodyGyro-mean()-Y
fBodyGyro-mean()-Z
fBodyGyro-meanFreq()-X
fBodyGyro-meanFreq()-Y
fBodyGyro-meanFreq()-Z
fBodyAccMag-mean()
fBodyAccMag-meanFreq() 
fBodyBodyAccJerkMag-mean()
fBodyBodyAccJerkMag-meanFreq() 
fBodyBodyGyroMag-mean()
fBodyBodyGyroMag-meanFreq()
fBodyBodyGyroJerkMag-mean()
fBodyBodyGyroJerkMag-meanFreq() 
angle(tBodyAccMean,gravity) 
angle(tBodyAccJerkMean),gravityMean)
angle(tBodyGyroMean,gravityMean)
angle(tBodyGyroJerkMean,gravityMean)
angle(X,gravityMean)
angle(Y,gravityMean)
angle(Z,gravityMean) 
tBodyAcc-std()-X
tBodyAcc-std()-Y
tBodyAcc-std()-Z
tGravityAcc-std()-X
tGravityAcc-std()-Y
tGravityAcc-std()-Z 
tBodyAccJerk-std()-X
tBodyAccJerk-std()-Y
tBodyAccJerk-std()-Z
tBodyGyro-std()-X 
tBodyGyro-std()-Y
tBodyGyro-std()-Z
tBodyGyroJerk-std()-X
tBodyGyroJerk-std()-Y
tBodyGyroJerk-std()-Z 
tBodyAccMag-std()
tGravityAccMag-std()
tBodyAccJerkMag-std() 
tBodyGyroMag-std()
tBodyGyroJerkMag-std()
fBodyAcc-std()-X
fBodyAcc-std()-Y
fBodyAcc-std()-Z
fBodyAccJerk-std()-X
fBodyAccJerk-std()-Y
fBodyAccJerk-std()-Z
fBodyGyro-std()-X
fBodyGyro-std()-Y
fBodyGyro-std()-Z
fBodyAccMag-std()
fBodyBodyAccJerkMag-std()
fBodyBodyGyroMag-std() 
fBodyBodyGyroJerkMag-std()


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








