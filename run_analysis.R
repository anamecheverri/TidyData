library (dplyr)
library(tidyr)

#Reads features names
features <-read.table("UCI HAR Dataset/features.txt")
head(features)
dim(features)

#Reads activity codes
activities <-read.table("UCI HAR Dataset/activity_labels.txt")
head(activities)
class(activities)
dim(activities)


#Reads training dataset
subject_train <-read.table("UCI HAR Dataset/train/subject_train.txt")
colnames(subject_train)<-c("Subject")
head(subject_train)
dim(subject_train)

x_train <-read.table("UCI HAR Dataset/train/X_train.txt")
head(x_train)
dim(x_train)

y_train <-read.table("UCI HAR Dataset/train/y_train.txt")
colnames(y_train)<-c("Activities")
y_train$Activities<-factor(y_train$Activities)
levels(y_train$Activities)<-activities$V2
head(y_train)
dim(y_train)
y_train

#Reads test dataset
subject_test <-read.table("UCI HAR Dataset/test/subject_test.txt")
colnames(subject_test)<-c("Subject")
head(subject_test)
dim(subject_test)

x_test <-read.table("UCI HAR Dataset/test/X_test.txt")
head(x_test)
dim(x_test)

y_test <-read.table("UCI HAR Dataset/test/y_test.txt")
colnames(y_test)<-c("Activities")
y_test$Activities<-factor(y_test$Activities)
levels(y_test$Activities)<-activities$V2
head(y_test)
dim(y_test)

#Changes variable names to actual features
colnames(x_train)<-features$V2
colnames (x_test)<-features$V2


#Consolidates all variables in a single file
#Training data
all_data_train <-cbind(subject_train,y_train,x_train)

#Test data
all_data_test <-cbind(subject_test,y_test,x_test)

#Merges 2 files
all_data <-rbind(all_data_train,all_data_test)

dim(all_data)
all_data_df <- tbl_df(all_data)

#Select only the variables for means and standard deviations
data_subset <- select(all_data_df,Subject, Activities,contains("mean()"),contains("std()"))
dim(data_subset)
head(data_subset)

#new dataset average subject and activity for each variable
data_subset_group <-group_by(data_subset,Subject,Activities)
tidy<-summarise_each(data_subset_group,funs(mean))
tidy
write.table(tidy,file="tidy.txt",row.name=FALSE)
