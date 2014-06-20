This CodeBook has the following sections:
* Choices, assumptions, method
* Study Design
* CodeBook

## Choices, assumptions, method
* Only a subset of the original data was used to produce the tidy output.
* The original data was contained in several files.
* One assumption is that the order of the data across the relevant files (e.g., train/subject_train, X_train.txt, and y_train.txt)
preserved the correspondence between them.
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

### Variables 
* SubjectID: Unique integer corresponding to an individual subject ranging from 1-30
* Activity: One of WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
* meanBodyAccelXMeanByTime: average of mean x-component body acceleration signals (domain: time, units: g)
* meanBodyAccelYMeanByTime: average of mean y-component body acceleration signals (domain: time, units: g)
* meanBodyAccelZMeanByTime: average of mean z-component body acceleration signals (domain: time, units: g)
* meanBodyAccelXStdByTime: average of standard deviation x-component body acceleration signals (domain: time, units: g)
* meanBodyAccelYStdByTime: average of standard deviation y-component body acceleration signals (domain: time, units: g)
* meanBodyAccelZStdByTime: average of standard deviation z-component body acceleration signals (domain: time, units: g)
* meanGravityAccelXMeanByTime: average of mean x-component gravity acceleration signals (domain: time, units: g)
* meanGravityAccelYMeanByTime: average of mean y-component gravity acceleration signals (domain: time, units: g)
* meanGravityAccelZMeanByTime: average of mean z-component gravity acceleration signals (domain: time, units: g)
* meanGravityAccelXStdByTime: average of standard deviation x-component gravity acceleration signals (domain: time, units: g)
* meanGravityAccelYStdByTime: average of standard deviation y-component gravity acceleration signals (domain: time, units: g)
* meanGravityAccelZStdByTime: average of standard deviation z-component gravity acceleration signals (domain: time, units: g)
* meanBodyAccelJerkXMeanByTime: average of mean x-component body acceleration jerk signals (domain: time, units: g)
* meanBodyAccelJerkYMeanByTime: average of mean y-component body acceleration jerk signals (domain: time, units: g)
* meanBodyAccelJerkZMeanByTime: average of mean z-component body acceleration jerk signals (domain: time, units: g)
* meanBodyAccelJerkXStdByTime: average of standard deviation x-component body acceleration jerk signals (domain: time, units: g)
* meanBodyAccelJerkYStdByTime: average of standard deviation y-component body acceleration jerk signals (domain: time, units: g)
* meanBodyAccelJerkZStdByTime: average of standard deviation z-component body acceleration jerk signals (domain: time, units: g)
* meanBodyGyroXMeanByTime: average of mean x-component body angular velocity signal (domain: time, units: radians/sec)
* meanBodyGyroYMeanByTime: average of mean y-component body angular velocity signal (domain:time, units: radians/sec)
* meanBodyGyroZMeanByTime: average of mean z-component body angular velocity signal (domain:time, units: radians/sec)
* meanBodyGyroXStdByTime: average of standard deviation x-component body angular velocity signal (domain:time, units: radians/sec)
* meanBodyGyroYStdByTime: average of standard deviation y-component body angular velocity signal (domain:time, units: radians/sec)
* meanBodyGyroZStdByTime: average of standard deviation z-component body angular velocity signal (domain:time, units: radians/sec)
* meanBodyGyroJerkXMeanByTime: average of mean x-component body angular velocity jerk signal (domain:time, units: radians/sec)
* meanBodyGyroJerkYMeanByTime: average of mean y-component body angular velocity jerk signal (domain:time, units: radians/sec)
* meanBodyGyroJerkZMeanByTime: average of mean z-component body angular velocity jerk signal (domain:time, units: radians/sec)
* meanBodyGyroJerkXStdByTime: average of standard deviation x-component body angular velocity jerk signal (domain:time, units: radians/sec)
* meanBodyGyroJerkYStdByTime: average of standard deviation y-component body angular velocity jerk signal (domain:time, units: radians/sec)
* meanBodyGyroJerkZStdByTime: average of standard deviation z-component body angular velocity jerk signal (domain:time, units: radians/sec)
* meanBodyAccelMagMeanByTime: average of mean body acceleration magnitude (domain: time, units: g)
* meanBodyAccelMagStdByTime: average of standard deviation body acceleration magnitude (domain: time, units: g)
* meanGravityAccelMagMeanByTime: average of mean gravity acceleration magnitude (domain: time, units: g)
* meanGravityAccelMagStdByTime: average of standard deviation gravity acceleration magnitude (domain: time, units: g)
* meanBodyAccelJerkMagMeanByTime: average of mean body acceleration jerk magnitude (domain: time, units: g)
* meanBodyAccelJerkMagStdByTime: average of standard deviation body acceleration jerk magnitude (domain: time, units: g)
* meanBodyGyroMagMeanByTime: average of mean body angular velocity magnitude domain: time, units: radians/sec)
* meanBodyGyroMagStdByTime: average of standard deviation body angular velocity magnitude domain: time, units: radians/sec)
* meanBodyGyroJerkMagMeanByTime: average of mean body jerk angular velocity magnitude domain: time, units: radians/sec)
* meanBodyGyroJerkMagStdByTime: average of standard deviation body jerk angular velocity magnitude domain: time, units: radians/sec)
* meanBodyAccelXMeanByFreq: average of mean x-component body acceleration signal (domain: frequency, units: g)
* meanBodyAccelYMeanByFreq: average of mean y-component body acceleration signal (domain: frequency, units: g)
* meanBodyAccelZMeanByFreq: average of mean z-component body acceleration signal (domain: frequency, units: g)
* meanBodyAccelXStdByFreq: average of standard deviation x-component body acceleration signal (domain: frequency, units: g)
* meanBodyAccelYStdByFreq: average of standard deviation y-component body acceleration signal (domain: frequency, units: g)
* meanBodyAccelZStdByFreq: average of standard deviation z-component body acceleration signal (domain: frequency, units: g)
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
* meanBodyGyroXMeanByFreq: average of mean x-component angular velocity (domain: frequency, units: radians/sec)
* meanBodyGyroYMeanByFreq: average of mean y-component angular velocity (domain: frequency, units: radians/sec)
* meanBodyGyroZMeanByFreq: average of mean z-component angular velocity (domain: frequency, units: radians/sec)
* meanBodyGyroXStdByFreq: average of standard deviation x-component angular velocity (domain: frequency, units: radians/sec)
* meanBodyGyroYStdByFreq: average of standard deviation y-component angular velocity (domain: frequency, units: radians/sec)
* meanBodyGyroZStdByFreq: average of standard deviation z-component angular velocity (domain: frequency, units: radians/sec)
* meanBodyGyroXMeanFreqByFreq: average of mean x-component mean frequency angular velocity (domain: frequency, units: radians/sec)
* meanBodyGyroYMeanFreqByFreq: average of mean y-component mean frequency angular velocity (domain: frequency, units: radians/sec)
* meanBodyGyroZMeanFreqByFreq: average of mean z-component mean frequency angular velocity (domain: frequency, units: radians/sec)
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
