###############################################################################

#Check to see if folder exists, unzip and gets files

###############################################################################
if(!file.exists("./data")){
  dir.create("./data")
}

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

download.file(fileUrl,destfile="./data/Dataset.zip")

unzip(zipfile="./data/Dataset.zip",exdir="./data")

path_rf <- file.path("./data" , "UCI HAR Dataset")
files<-list.files(path_rf, recursive=TRUE)
################################################################################

#Read, merge, and name the data

################################################################################
activityTest  <- read.table(file.path(path_rf, "test" , "Y_test.txt" ),header = FALSE)
activityTrain <- read.table(file.path(path_rf, "train", "Y_train.txt"),header = FALSE)
Activity<- rbind(activityTrain, activityTest)
names(Activity)<- c("activity")

subjectTrain <- read.table(file.path(path_rf, "train", "subject_train.txt"),header = FALSE)
subjectTest  <- read.table(file.path(path_rf, "test" , "subject_test.txt"),header = FALSE)
Subject <- rbind(subjectTrain, subjectTest)
names(Subject)<-c("subject")

featuresTest  <- read.table(file.path(path_rf, "test" , "X_test.txt" ),header = FALSE)
featuresTrain <- read.table(file.path(path_rf, "train", "X_train.txt"),header = FALSE)
Features<- rbind(featuresTrain, featuresTest)
featuresNames <- read.table(file.path(path_rf, "features.txt"),head=FALSE)
names(Features)<- featuresNames$V2

# Merge all the data together
subjectActivity <- cbind(Subject, Activity)
Data <- cbind(Features, subjectActivity)


################################################################################

#Extract Mean and other statistics

###############################################################################

subdataFeaturesNames<-featuresNames$V2[grep("mean\\(\\)|std\\(\\)", featuresNames$V2)]

selectedNames<-c(as.character(subdataFeaturesNames), "subject", "activity" )
Data<-subset(Data,select=selectedNames)

#str(Data)

#################################################################################

#Name data

################################################################################
activityLabels <- read.table(file.path(path_rf, "activity_labels.txt"),header = FALSE)

#head(Data$activity,30)

fdata = factor(Data$activity)
rdata = factor(Data$activity,labels=activityLabels[,2])
Data$activity <- rdata

#head(Data$activity,30)

names(Data)<-gsub("^t", "time", names(Data))
names(Data)<-gsub("^f", "frequency", names(Data))
names(Data)<-gsub("Acc", "Accelerometer", names(Data))
names(Data)<-gsub("Gyro", "Gyroscope", names(Data))
names(Data)<-gsub("Mag", "Magnitude", names(Data))
names(Data)<-gsub("BodyBody", "Body", names(Data))

##############################################################################

# Tide data/cookbook

##############################################################################

library(plyr);
Data2<-aggregate(. ~subject + activity, Data, mean)
Data2<-Data2[order(Data2$subject,Data2$activity),]
write.table(Data2, file = "tidydata.txt",row.name=FALSE)
  