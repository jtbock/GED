This README contains the following sections:
*Obtaining the Data
*Generating the output

##Obtaining the Data
The data can be downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.
After unzipping the file, the run_analysis.R script should be placed in the resulting "UCI HAR Dataset" directory and executed.

##Generating the output
To obtain the tidy output using the run_analysis.R script:
*R should be started in the "UCI HAR Dataset" directory, or use setwd to set it as the working directory.
*This script 
**needs the "reshape2" package to run correctly.
**reads in the features.txt file and greps for "mean" and "std" to create
a vector of indices which will be used to subset the combined test + training data.
**reads train/X_train.txt and test/X_test.txt into their own dataframes.
**reads the train/y_train.txt and test/y_test.txt files for the activity info
**reads the train/subject_train.txt and test/subject_text.txt files for the subject IDs
**replaces the integer representation of activity with the string representation of activity 
in the y_train.txt and y_test.txt files.
**combines the test/training data, subject IDs, and activity labels into one dataframe
**subsets the resulting dataframe with the indices obtained by searching for "mean" and "std" in the features.txt file
**sets the column names to be more descriptive
**creates a new data set via melt, using SubjectId and Activity as the IDs
**creates the tidy output via dcast, again using SubjectID and Activity as the IDs with the remaining columns as the variables
**writes the output to a file named "tidy_averages.txt" in the working directory
