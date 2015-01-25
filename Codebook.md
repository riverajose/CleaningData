# Code Book

## Data source

The data is automatically downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

For information about the experiment and the way data was collected, please read README.txt contained in the data source zip file.

###Data Acquisition

The data is acquired automatically by the script. 

When the script is run, the following steps happen for obtaining the data:

1. A directory named data is created (if not already existing) in the current working directory
2. If the original data set (named dataset.zip) does not exist already, the data set is downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and named dataset.zip
3. The dataset is unzipped. The original dataset is present in data/UCI HAR

## Variables

All the column names are described in README.txt data source zip file

The following two columns that were added:

* subject: the string that corresponds to the subject of the experiment
* activity: a factor that represent the activity of the subject while collecting data points

### Variable Table
| ID | Name                           | Original Name             |
|---:|:-------------------------------|:--------------------------|
| 1  | subject                        | N/A                       |
| 2  | activity                       | N/A                       |
| 3  | t.body.acc.mean.x              | tBodyAcc-mean(x)          |
| 4  | t.body.acc.mean.y              | tBodyAcc-mean(y)          |
| 5  | t.body.acc.mean.z              | tBodyAcc-mean(z)          |
| 6  | t.body.acc.std.x               | tBodyAcc-std(x)           |
| 7  | t.body.acc.std.y               | tBodyAcc-std(y)           |
| 8  | t.body.acc.std.z               | tBodyAcc-std(z)           |
| 9  | t.gravity.acc.mean.x           | tGravityAcc-mean(x)       |
| 10 | t.gravity.acc.mean.y           | tGravityAcc-mean(y)       |
| 11 | t.gravity.acc.mean.z           | tGravityAcc-mean(z)       |
| 12 | t.gravity.acc.std.x            | tGravityAcc-std(x)        |
| 13 | t.gravity.acc.std.y            | tGravityAcc-std(y)        |
| 14 | t.gravity.acc.std.z            | tGravityAcc-std(z)        |
| 15 | t.body.acc.jerk.mean.x         | tBodyAccJerk-mean(x)      |
| 16 | t.body.acc.jerk.mean.y         | tBodyAccJerk-mean(y)      |
| 17 | t.body.acc.jerk.mean.z         | tBodyAccJerk-mean(z)      |
| 18 | t.body.acc.jerk.std.x          | tBodyAccJerk-std(x)       |
| 19 | t.body.acc.jerk.std.y          | tBodyAccJerk-std(y)       |
| 20 | t.body.acc.jerk.std.z          | tBodyAccJerk-std(z)       |
| 21 | t.body.gyro.mean.x             | tBodyGyro-mean(x)         |
| 22 | t.body.gyro.mean.y             | tBodyGyro-mean(y)         |
| 23 | t.body.gyro.mean.z             | tBodyGyro-mean(z)         |
| 24 | t.body.gyro.std.x              | tBodyGyro-std(x)          |
| 25 | t.body.gyro.std.y              | tBodyGyro-std(y)          |
| 26 | t.body.gyro.std.z              | tBodyGyro-std(z)          |
| 27 | t.body.gyro.jerk.mean.x        | tBodyGyroJerk-mean(x)     |
| 28 | t.body.gyro.jerk.mean.y        | tBodyGyroJerk-mean(y)     |
| 29 | t.body.gyro.jerk.mean.z        | tBodyGyroJerk-mean(z)     |
| 30 | t.body.gyro.jerk.std.x         | tBodyGyroJerk-std(x)      |
| 31 | t.body.gyro.jerk.std.y         | tBodyGyroJerk-std(y)      |
| 32 | t.body.gyro.jerk.std.z         | tBodyGyroJerk-std(z)      |
| 33 | t.body.acc.mag.mean            | tBodyAccMag-mean          |
| 34 | t.body.acc.mag.std             | tBodyAccMag-std           |
| 35 | t.gravity.acc.mag.mean         | tGravityAccMag-mean       |
| 36 | t.gravity.acc.mag.std          | tGravityAccMag-std        |
| 37 | t.body.acc.jerk.mag.mean       | tBodyAccJerkMag-mean      |
| 38 | t.body.acc.jerk.mag.std        | tBodyAccJerkMag-std       |
| 39 | t.body.gyro.mag.mean           | tBodyGyroMag-mean         |
| 40 | t.body.gyro.mag.std            | tBodyGyroMag-std          |
| 41 | t.body.gyro.jerk.mag.mean      | tBodyGyroJerkMag-mean     |
| 42 | t.body.gyro.jerk.mag.std       | tBodyGyroJerkMag-std      |
| 43 | f.body.acc.mean.x              | fBodyAcc-mean(x)          |
| 44 | f.body.acc.mean.y              | fBodyAcc-mean(y)          |
| 45 | f.body.acc.mean.z              | fBodyAcc-mean(z)          |
| 46 | f.body.acc.std.x               | fBodyAcc-std(x)           |
| 47 | f.body.acc.std.y               | fBodyAcc-std(y)           |
| 48 | f.body.acc.std.z               | fBodyAcc-std(z)           |
| 49 | f.body.acc.jerk.mean.x         | fBodyAccJerk-mean(x)      |
| 50 | f.body.acc.jerk.mean.y         | fBodyAccJerk-mean(y)      |
| 51 | f.body.acc.jerk.mean.z         | fBodyAccJerk-mean(z)      |
| 52 | f.body.acc.jerk.std.x          | fBodyAccJerk-std(x)       |
| 53 | f.body.acc.jerk.std.y          | fBodyAccJerk-std(y)       |
| 54 | f.body.acc.jerk.std.z          | fBodyAccJerk-std(z)       |
| 55 | f.body.gyro.mean.x             | fBodyGyro-mean(x)         |
| 56 | f.body.gyro.mean.y             | fBodyGyro-mean(y)         |
| 57 | f.body.gyro.mean.z             | fBodyGyro-mean(z)         |
| 58 | f.body.gyro.std.x              | fBodyGyro-std(x)          |
| 59 | f.body.gyro.std.y              | fBodyGyro-std(y)          |
| 60 | f.body.gyro.std.z              | fBodyGyro-std(z)          |
| 61 | f.body.acc.mag.mean            | fBodyAccMag-mean          |
| 62 | f.body.acc.mag.std             | fBodyAccMag-std           |
| 63 | f.body.body.acc.jerk.mag.mean  | fBodyBodyAccJerkMag-mean  |
| 64 | f.body.body.acc.jerk.mag.std   | fBodyBodyAccJerkMag-std   |
| 65 | f.body.body.gyro.mag.mean      | fBodyBodyGyroMag-mean     |
| 66 | f.body.body.gyro.mag.std       | fBodyBodyGyroMag-std      |
| 67 | f.body.body.gyro.jerk.mag.mean | fBodyBodyGyroJerkMag-mean |
| 68 | f.body.body.gyro.jerk.mag.std  | fBodyBodyGyroJerkMag-std  |


The features variables generally follow the following naming convention

```{f|t}.{body|gravity}.{acc|gyro}.{mag|mean|std}```

where

t is time, f is the frequency, body and gravity are reference frames, acc is the accelerometer, gyro is the gyroscope, mag is the euclidean magnitude, mean is the average value, and std is the standard deviation. Jerk, where present, is the jerk signal, as opposed to smooth signal (everything else)



# Output

* tidy_data.txt: a space-delimited value file that contains mean and standard deviation for each measurements from the train and test data,

If you want to load those files using R, use the following commands:


