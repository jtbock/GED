This CodeBook has the following sections:
* Choices, assumptions, method
* Study Design
* CodeBook

## Choices, assumptions, method
* Only a subset of the original data was used to produce the tidy output.
* The original data was contained in several files.
* One assumption is that the order of the data across the relevant files (e.g., train/subject_train, X_train.txt, and y_train.txt)
preserved the correspondence between them (this is implied, but without an explicit "foreign key," seems potentially dangerous).
* In features.txt, variables 516-554 appear to have an extra "Body" in the variable name. This extra "Body" was removed in
my corresponding variable names.
* From the original dataset, only features containing "mean" or "std" (as indicated in the directions)
were summarized (via mean) and placed in the tidy output. This yielded 79 columns of data, plus one column for the
subject ID and one column for activity.  Each of the 180 rows corresponds to a unique subject ID/activity combination
(30 subjects * 6 activities = 180)
* The output can be described as tidy because it meets the tidy data criteria described in the Wickham paper:
  * Every measured variable is in its own column
  * Each different oservation (subject ID/activity combo) is in a different row
  * The output contains only a single observational unit.

## Study Design
The original data was obtained from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

## CodeBook
* The signal variables are all unitless; they come from data which has been divided by its range to normalize it, so
the data are all ratios.
### Variables 
* SubjectID: Unique integer corresponding to an individual subject ranging from 1-30
* Activity: One of WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
* meanBodyAccelXMeanByTime: average of mean x-component body acceleration signals (domain: time)
* meanBodyAccelYMeanByTime: average of mean y-component body acceleration signals (domain: time)
* meanBodyAccelZMeanByTime: average of mean z-component body acceleration signals (domain: time)
* meanBodyAccelXStdByTime: average of standard deviation x-component body acceleration signals (domain: time)
* meanBodyAccelYStdByTime: average of standard deviation y-component body acceleration signals (domain: time)
* meanBodyAccelZStdByTime: average of standard deviation z-component body acceleration signals (domain: time)
* meanGravityAccelXMeanByTime: average of mean x-component gravity acceleration signals (domain: time)
* meanGravityAccelYMeanByTime: average of mean y-component gravity acceleration signals (domain: time)
* meanGravityAccelZMeanByTime: average of mean z-component gravity acceleration signals (domain: time)
* meanGravityAccelXStdByTime: average of standard deviation x-component gravity acceleration signals (domain: time)
* meanGravityAccelYStdByTime: average of standard deviation y-component gravity acceleration signals (domain: time)
* meanGravityAccelZStdByTime: average of standard deviation z-component gravity acceleration signals (domain: time)
* meanBodyAccelJerkXMeanByTime: average of mean x-component body acceleration jerk signals (domain: time)
* meanBodyAccelJerkYMeanByTime: average of mean y-component body acceleration jerk signals (domain: time)
* meanBodyAccelJerkZMeanByTime: average of mean z-component body acceleration jerk signals (domain: time)
* meanBodyAccelJerkXStdByTime: average of standard deviation x-component body acceleration jerk signals (domain: time)
* meanBodyAccelJerkYStdByTime: average of standard deviation y-component body acceleration jerk signals (domain: time)
* meanBodyAccelJerkZStdByTime: average of standard deviation z-component body acceleration jerk signals (domain: time)
* meanBodyGyroXMeanByTime: average of mean x-component body angular velocity signal (domain: time)
* meanBodyGyroYMeanByTime: average of mean y-component body angular velocity signal (domain:time)
* meanBodyGyroZMeanByTime: average of mean z-component body angular velocity signal (domain:time)
* meanBodyGyroXStdByTime: average of standard deviation x-component body angular velocity signal (domain:time)
* meanBodyGyroYStdByTime: average of standard deviation y-component body angular velocity signal (domain:time)
* meanBodyGyroZStdByTime: average of standard deviation z-component body angular velocity signal (domain:time)
* meanBodyGyroJerkXMeanByTime: average of mean x-component body angular velocity jerk signal (domain:time)
* meanBodyGyroJerkYMeanByTime: average of mean y-component body angular velocity jerk signal (domain:time)
* meanBodyGyroJerkZMeanByTime: average of mean z-component body angular velocity jerk signal (domain:time)
* meanBodyGyroJerkXStdByTime: average of standard deviation x-component body angular velocity jerk signal (domain:time)
* meanBodyGyroJerkYStdByTime: average of standard deviation y-component body angular velocity jerk signal (domain:time)
* meanBodyGyroJerkZStdByTime: average of standard deviation z-component body angular velocity jerk signal (domain:time)
* meanBodyAccelMagMeanByTime: average of mean body acceleration magnitude (domain: time)
* meanBodyAccelMagStdByTime: average of standard deviation body acceleration magnitude (domain: time)
* meanGravityAccelMagMeanByTime: average of mean gravity acceleration magnitude (domain: time)
* meanGravityAccelMagStdByTime: average of standard deviation gravity acceleration magnitude (domain: time)
* meanBodyAccelJerkMagMeanByTime: average of mean body acceleration jerk magnitude (domain: time)
* meanBodyAccelJerkMagStdByTime: average of standard deviation body acceleration jerk magnitude (domain: time)
* meanBodyGyroMagMeanByTime: average of mean body angular velocity magnitude (domain: time)
* meanBodyGyroMagStdByTime: average of standard deviation body angular velocity magnitude (domain: time)
* meanBodyGyroJerkMagMeanByTime: average of mean body jerk angular velocity magnitude (domain: time)
* meanBodyGyroJerkMagStdByTime: average of standard deviation body jerk angular velocity magnitude (domain: time)
* meanBodyAccelXMeanByFreq: average of mean x-component body acceleration signal (domain: frequency)
* meanBodyAccelYMeanByFreq: average of mean y-component body acceleration signal (domain: frequency)
* meanBodyAccelZMeanByFreq: average of mean z-component body acceleration signal (domain: frequency)
* meanBodyAccelXStdByFreq: average of standard deviation x-component body acceleration signal (domain: frequency)
* meanBodyAccelYStdByFreq: average of standard deviation y-component body acceleration signal (domain: frequency)
* meanBodyAccelZStdByFreq: average of standard deviation z-component body acceleration signal (domain: frequency)
* meanBodyAccelXMeanFreqByFreq: average of x-component mean frequency (domain: frequency)
* meanBodyAccelYMeanFreqByFreq: average of y-component mean frequency (domain: frequency)
* meanBodyAccelZMeanFreqByFreq: average of z-component mean frequency (domain: frequency)
* meanBodyAccelJerkXMeanByFreq: average of mean x-component jerk signal frequency (domain: frequency)
* meanBodyAccelJerkYMeanByFreq: average of mean y-component jerk signal frequency (domain: frequency)
* meanBodyAccelJerkZMeanByFreq: average of mean z-component jerk signal frequency (domain: frequency)
* meanBodyAccelJerkXStdByFreq: average of standard deviation x-component jerk signal frequency (domain: frequency)
* meanBodyAccelJerkYStdByFreq: average of standard deviation y-component jerk signal frequency (domain: frequency)
* meanBodyAccelJerkZStdByFreq: average of standard deviation z-component jerk signal frequency (domain: frequency)
* meanBodyAccelJerkXMeanFreqByFreq: average of mean x-component jerk signal mean frequency (domain: frequency)
* meanBodyAccelJerkYMeanFreqByFreq: average of mean y-component jerk signal mean frequency (domain: frequency)
* meanBodyAccelJerkZMeanFreqByFreq: average of mean z-component jerk signal mean frequency (domain: frequency)
* meanBodyGyroXMeanByFreq: average of mean x-component angular velocity (domain: frequency)
* meanBodyGyroYMeanByFreq: average of mean y-component angular velocity (domain: frequency)
* meanBodyGyroZMeanByFreq: average of mean z-component angular velocity (domain: frequency)
* meanBodyGyroXStdByFreq: average of standard deviation x-component angular velocity (domain: frequency)
* meanBodyGyroYStdByFreq: average of standard deviation y-component angular velocity (domain: frequency)
* meanBodyGyroZStdByFreq: average of standard deviation z-component angular velocity (domain: frequency)
* meanBodyGyroXMeanFreqByFreq: average of mean x-component mean frequency angular velocity (domain: frequency)
* meanBodyGyroYMeanFreqByFreq: average of mean y-component mean frequency angular velocity (domain: frequency)
* meanBodyGyroZMeanFreqByFreq: average of mean z-component mean frequency angular velocity (domain: frequency)
* meanBodyAccelMagMeanByFreq: average of mean body acceleration magnitude (domain: frequency)
* meanBodyAccelMagStdByFreq: average of standard deviation body acceleration magnitude (domain: frequency)
* meanBodyAccelMagMeanFreqByFreq: average of mean body acceleration mean frequency magnitude (domain: frequency)
* meanBodyAccelJerkMagMeanByFreq: average of mean body jerk acceleration magnitude (domain: frequency)
* meanBodyAccelJerkMagStdByFreq: average of standard deviation body jerk acceleration magnitude (domain: frequency)
* meanBodyAccelJerkMagMeanFreqByFreq: average of mean body jerk acceleration mean frequency magnitude (domain: frequency)
* meanBodyGyroMagMeanByFreq: average of mean body angular velocity magnitude (domain: frequency)
* meanBodyGyroMagStdByFreq: average of standard deviation body acceleration magnitude (domain: frequency)
* meanBodyGyroMagMeanFreqByFreq: average of mean body acceleration mean frequency magnitude (domain: frequency)
* meanBodyGyroJerkMagMeanByFreq: average of mean body angular velocity jerk magnitude (domain: frequency)
* meanBodyGyroJerkMagStdByFreq: average of standard deviation body acceleration jerk magnitude (domain: frequency)
* meanBodyGyroJerkMagMeanFreqByFreq: average of mean body acceleration mean frequency jerk magnitude (domain: frequency)
