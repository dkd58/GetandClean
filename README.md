
##DESCRIPTION

This repository, titled "GetandClean", contains information, data and code for the "Getting and Cleaning Data" course from Coursera, specifcally around the Course Project (althought here aresome other course materials contained in this repo. 

The main code is contained in the script named **"run_analysis.R"**. This code witll set the working directory (which you probably want to modify to suit your own directory set up), download from the reference URL the zip file. It will then proceed to process that data to meet the aims of the project, which is to "tidy up"" the data.

The "tidy up" function within run_analysis.R merges the original "training" and "test" data sets, extracts measurements on the mean and standard deviation for each measurement, uses descriptive activity names and labels the variables, generates a tidy data set with the average of each variable for each activity and each subject.

There is also **"cookbook.md"** which decscibes the data elements within the downloaded file and the final structure and content of the tidy data set.

The original data set to be processed for the course project is available as a "zip" file at: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

It is a multidimensional time-series, composed by

1. 30 subjects (experiment volunteers)
2. various activities (for each subject)
3. various measured variables (for each activity).

A full description of the data is available at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

