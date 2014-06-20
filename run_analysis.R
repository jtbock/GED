#
# Course Project for Getting and Extracting Data
#
# This script should be run in the "UCI HAR Dataset" directory as extracted from the 
# downloaded zip file (getdata_projectfiles_UCI HAR Dataset.zip)
# This script 
#    --reads in test data, training data, activity labels, subject IDs, and the feature strings
#    --extracts features which contain "mean" or "std" and determines the corresponding indices
#    --creates a new dataset containing the test and training data, with associated subject IDs and
#      activity labels
#    --subsets the new dataset to create another new dataset which contains only the features with
#      mean or std in the name
#    --applies descriptive names to the columns of the dataset
#    --uses melt and dcast to create a final, tidy dataset which is written out to a file.
#

#Load any needed libraries
library(reshape2)

# Create a vector with the desired feature names
feature_names<-c("SubjectID","Activity",
                 "bodyAccelXMeanByTime","bodyAccelYMeanByTime","bodyAccelZMeanByTime",
                 "bodyAccelXStdByTime","bodyAccelYStdByTime","bodyAccelZStdByTime",
                 "gravityAccelXMeanByTime","gravityAccelYMeanByTime","gravityAccelZMeanByTime",
                 "gravityAccelXStdByTime","gravityAccelYStdByTime","gravityAccelZStdByTime",
                 "bodyAccelJerkXMeanByTime","bodyAccelJerkYMeanByTime","bodyAccelJerkZMeanByTime",
                 "bodyAccelJerkXStdByTime","bodyAccelJerkYStdByTime","bodyAccelJerkZStdByTime",
                 "bodyGyroXMeanByTime","bodyGyroYMeanByTime","bodyGyroZMeanByTime",
                 "bodyGyroXStdByTime","bodyGyroYStdByTime","bodyGyroZStdByTime",
                 "bodyGyroJerkXMeanByTime","bodyGyroJerkYMeanByTime","bodyGyroJerkZMeanByTime",
                 "bodyGyroJerkXStdByTime","bodyGyroJerkYStdByTime","bodyGyroJerkZStdByTime",
                 "bodyAccelMagMeanByTime","bodyAccelMagStdByTime",
                 "gravityAccelMagMeanByTime","gravityAccelMagStdByTime",
                 "bodyAccelJerkMagMeanByTime","bodyAccelJerkMagStdByTime",
                 "bodyGyroMagMeanByTime","bodyGyroMagStdByTime",
                 "bodyGyroJerkMagMeanByTime","bodyGyroJerkMagStdByTime",
                 "bodyAccelXMeanByFreq","bodyAccelYMeanByFreq","bodyAccelZMeanByFreq",
                 "bodyAccelXStdByFreq","bodyAccelYStdByFreq","bodyAccelZStdByFreq",
                 "bodyAccelXMeanFreqByFreq","bodyAccelYMeanFreqByFreq","bodyAccelZMeanFreqByFreq",
                 "bodyAccelJerkXMeanByFreq","bodyAccelJerkYMeanByFreq","bodyAccelJerkZMeanByFreq",
                 "bodyAccelJerkXStdByFreq","bodyAccelJerkYStdByFreq","bodyAccelJerkZStdByFreq",
                 "bodyAccelJerkXMeanFreqByFreq","bodyAccelJerkYMeanFreqByFreq","bodyAccelJerkZMeanFreqByFreq",
                 "bodyGyroXMeanByFreq","bodyGyroYMeanByFreq","bodyGyroZMeanByFreq",
                 "bodyGyroXStdByFreq","bodyGyroYStdByFreq","bodyGyroZStdByFreq",
                 "bodyGyroXMeanFreqByFreq","bodyGyroYMeanFreqByFreq","bodyGyroZMeanFreqByFreq",
                 "bodyAccelMagMeanByFreq","bodyAccelMagStdByFreq","bodyAccelMagMeanFreqByFreq",
                 "bodyAccelJerkMagMeanByFreq","bodyAccelJerkMagStdByFreq","bodyAccelJerkMagMeanFreqByFreq",
                 "bodyGyroMagMeanByFreq","bodyGyroMagStdByFreq","bodyGyroMagMeanFreqByFreq",
                 "bodyGyroJerkMagMeanByFreq","bodyGyroJerkMagStdByFreq","bodyGyroJerkMagMeanFreqByFreq")

tidy_feature_names<-c("SubjectID","Activity",
                 "meanBodyAccelXMeanByTime","meanBodyAccelYMeanByTime","meanBodyAccelZMeanByTime",
                 "meanBodyAccelXStdByTime","meanBodyAccelYStdByTime","meanBodyAccelZStdByTime",
                 "meanGravityAccelXMeanByTime","meanGravityAccelYMeanByTime","meanGravityAccelZMeanByTime",
                 "meanGravityAccelXStdByTime","meanGravityAccelYStdByTime","meanGravityAccelZStdByTime",
                 "meanBodyAccelJerkXMeanByTime","meanBodyAccelJerkYMeanByTime","meanBodyAccelJerkZMeanByTime",
                 "meanBodyAccelJerkXStdByTime","meanBodyAccelJerkYStdByTime","meanBodyAccelJerkZStdByTime",
                 "meanBodyGyroXMeanByTime","meanBodyGyroYMeanByTime","meanBodyGyroZMeanByTime",
                 "meanBodyGyroXStdByTime","meanBodyGyroYStdByTime","meanBodyGyroZStdByTime",
                 "meanBodyGyroJerkXMeanByTime","meanBodyGyroJerkYMeanByTime","meanBodyGyroJerkZMeanByTime",
                 "meanBodyGyroJerkXStdByTime","meanBodyGyroJerkYStdByTime","meanBodyGyroJerkZStdByTime",
                 "meanBodyAccelMagMeanByTime","meanBodyAccelMagStdByTime",
                 "meanGravityAccelMagMeanByTime","meanGravityAccelMagStdByTime",
                 "meanBodyAccelJerkMagMeanByTime","meanBodyAccelJerkMagStdByTime",
                 "meanBodyGyroMagMeanByTime","meanBodyGyroMagStdByTime",
                 "meanBodyGyroJerkMagMeanByTime","meanBodyGyroJerkMagStdByTime",
                 "meanBodyAccelXMeanByFreq","meanBodyAccelYMeanByFreq","meanBodyAccelZMeanByFreq",
                 "meanBodyAccelXStdByFreq","meanBodyAccelYStdByFreq","meanBodyAccelZStdByFreq",
                 "meanBodyAccelXMeanFreqByFreq","meanBodyAccelYMeanFreqByFreq","meanBodyAccelZMeanFreqByFreq",
                 "meanBodyAccelJerkXMeanByFreq","meanBodyAccelJerkYMeanByFreq","meanBodyAccelJerkZMeanByFreq",
                 "meanBodyAccelJerkXStdByFreq","meanBodyAccelJerkYStdByFreq","meanBodyAccelJerkZStdByFreq",
                 "meanBodyAccelJerkXMeanFreqByFreq","meanBodyAccelJerkYMeanFreqByFreq","meanBodyAccelJerkZMeanFreqByFreq",
                 "meanBodyGyroXMeanByFreq","meanBodyGyroYMeanByFreq","meanBodyGyroZMeanByFreq",
                 "meanBodyGyroXStdByFreq","meanBodyGyroYStdByFreq","meanBodyGyroZStdByFreq",
                 "meanBodyGyroXMeanFreqByFreq","meanBodyGyroYMeanFreqByFreq","meanBodyGyroZMeanFreqByFreq",
                 "meanBodyAccelMagMeanByFreq","meanBodyAccelMagStdByFreq","meanBodyAccelMagMeanFreqByFreq",
                 "meanBodyAccelJerkMagMeanByFreq","meanBodyAccelJerkMagStdByFreq","meanBodyAccelJerkMagMeanFreqByFreq",
                 "meanBodyGyroMagMeanByFreq","meanBodyGyroMagStdByFreq","meanBodyGyroMagMeanFreqByFreq",
                 "meanBodyGyroJerkMagMeanByFreq","meanBodyGyroJerkMagStdByFreq","meanBodyGyroJerkMagMeanFreqByFreq")
# Read in the training data, corresponding subject IDs, and corresponding activity labels
training_data<-read.table("train/X_train.txt")
training_activity_labels<-read.table("train/y_train.txt")
training_subject_ids<-read.table("train/subject_train.txt")

# Read in the test data, corresponding subject IDs, and corresponding activity labels
test_data<-read.table("test/X_test.txt")
test_activity_labels<-read.table("test/y_test.txt")
test_subject_ids<-read.table("test/subject_test.txt")

#Read in the features.txt file to obtain the indices of the features
feature_index<-read.table("features.txt")

#Extract the features which contain "mean"
mean_index<-grep("mean",feature_index[,2])

#Extract the features which contain "std"
std_index<-grep("std",feature_index[,2])

#Combine the two vectors and sort them
mean_std_index<-sort(c(mean_index,std_index))

# Add 2 to reflect the right index shift when the subject and activity columns are added
# to the test/training dataframe
mean_std_index<-mean_std_index+2

# Add in the column indices for subject ids and activity labels
mean_std_index<-c(1,2,mean_std_index)

# Read in the activity labels
activity_labels<-read.table("activity_labels.txt")

# Update the dataframes to replaces the numeric activity labels for the training 
# and test sets with the corresponding factor
training_activity_labels[,1]<-activity_labels[training_activity_labels[,1],2]
test_activity_labels[,1]<-activity_labels[test_activity_labels[,1],2]

# Combine the training data, IDs, and activity labels into one dataframe
train_data_tmp<-cbind(training_subject_ids,training_activity_labels)
train_data_full<-cbind(train_data_tmp,training_data)

# Combine the test data, IDs, and activity labels into one dataframe
test_data_tmp<-cbind(test_subject_ids,test_activity_labels)
test_data_full<-cbind(test_data_tmp,test_data)

# Now combine the full test and training data sets
tt_data_full<-rbind(train_data_full,test_data_full)

std_mean_data<-tt_data_full[,mean_std_index]
names(std_mean_data)<-feature_names

# To create the tidy data set, use melt and dcast
long_tidy<-melt(std_mean_data,id.vars=c("SubjectID","Activity"))
wide_tidy<-dcast(long_tidy,SubjectID+Activity ~ variable,mean)

# Update the column names
names(wide_tidy)<-tidy_feature_names
#Finally, write the tidy data set out to a tab-separated file
write.table(wide_tidy,"tidy_averages.txt",sep="\t")
