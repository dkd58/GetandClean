The data set "tidy.RData" is the result of collecting, working with and cleaning an existing data set. It is an R "data.frame" that contains 180 obs. of 86 variables (excluding Subject numbers and Activity labels). The variables in this data set, are calculated mean values per Subsject (experiment volunteers) and Activity, that derive from mean and standard deviation values of features measured from an accelerometer and gyroscope as presented in an experimental data set (UCI HAR Dataset).

Specifically, the source values are mean and standard deviation values (as calculated using the functions mean(), std()) of the following features:

tBodyAcc-XYZ tGravityAcc-XYZ tBodyAccJerk-XYZ tBodyGyro-XYZ tBodyGyroJerk-XYZ tBodyAccMag tGravityAccMag tBodyAccJerkMag tBodyGyroMag tBodyGyroJerkMag fBodyAcc-XYZ fBodyAccJerk-XYZ fBodyGyro-XYZ fBodyAccMag fBodyAccJerkMag fBodyGyroMag fBodyGyroJerkMag gravityMean tBodyAccMean tBodyAccJerkMean tBodyGyroMean tBodyGyroJerkMean

For details about the original features' data set (description and raw 3-axial signals), look at the respective metadata file (UCI HAR Dataset/features_info.txt and REAMDE.txt).

The complete list of calculated mean values for the variables in question, is available in 'features.tidy.RData'