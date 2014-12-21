setwd("~/Dropbox/Courses/Data Science/Getting and Cleaning Data")
fileURL <- 'http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
temp <- tempfile()
download.file(fileURL,temp, mode="wb")
unzip(temp)

# Directory
dirFile <- "./UCI HAR Dataset"

# Directory and filename of the tidy data:
tidyDataFile <- "./tidy-UCI-HAR-dataset.txt"

# Directory and filename (.txt) of the clean/tidy data
tidyDataFileAVGtxt <- "./tidy-UCI-HAR-dataset-AVG.txt"

## 1. Merge the training and the test sets to create one data set:
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE)
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE)
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", header = FALSE)
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", header = FALSE)
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE)
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE)

# Combine the training and test data sets by rows
x <- rbind(x_train, x_test)
y <- rbind(y_train, y_test)
s <- rbind(subject_train, subject_test)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement:
# Load the features set and add menaingful column names
features <- read.table("./UCI HAR Dataset/features.txt")
names(features) <- c('feat_id', 'feat_name')

# Search for matches to 'mean' or 'standard deviation' (sd)  within each element of character vector
index_features <- grep("-mean\\(\\)|-std\\(\\)", features$feat_name) 
x <- x[, index_features] 

# Tidy up the column headings after replacing, use the useful gsub function
names(x) <- gsub("\\(|\\)", "", (features[index_features, 'feat_name']))

# 3. Uses descriptive activity names to name the activities in the data set:
activities <- read.table("./UCI HAR Dataset/activity_labels.txt")
# 4. Appropriately labels the data set with descriptive activity names:
names(activities) <- c('act_id', 'act_name')
# replace factors with the activity name
y[, 1] = activities[y[, 1], 2]
names(y) <- "Activity"
names(s) <- "Subject"

# Combines data table by columns
tidyDataSet <- cbind(s, y, x)
write.csv(tidyDataSet, "tidyDataSet.csv")
write.table(tidyDataSet, "tidyDataSet.txt", col.names=FALSE)