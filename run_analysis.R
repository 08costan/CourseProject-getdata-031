# Coursera - Getting and Cleaning Data
# Course Project (Week 3)


# PART 0 - DOWNLOADING AND UNZIPPING DATA

if(!file.exists("data.zip")) {
    fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file(fileUrl,destfile = "data.zip",method="curl")
}
unzip("data.zip")

## PART 1 - READING RAW DATA

activity_labels<-read.csv("UCI HAR Dataset/activity_labels.txt",header=FALSE,sep=" ")
features<-read.csv("UCI HAR Dataset/features.txt",header=FALSE,sep=" ")

subject_train<-read.csv("UCI HAR Dataset/train/subject_train.txt",header=FALSE)
X_train<-read.table("UCI HAR Dataset/train/X_train.txt")
Y_train<-read.csv("UCI HAR Dataset/train/y_train.txt",header=FALSE)

subject_test<-read.csv("UCI HAR Dataset/test/subject_test.txt",header=FALSE)
X_test<-read.table("UCI HAR Dataset/test/X_test.txt")
Y_test<-read.csv("UCI HAR Dataset/test/y_test.txt",header=FALSE)

## PART 2 - PROCESSING 'TRAIN' DATA (X_train, Y_train, subject_train)

colnames(X_train)<-features$V2                          # Adding variable names from "features.txt"
columnSelect<-grep("mean\\(|std\\(",colnames(X_train))  # We only keep variables containing "mean()" or "std()" in their names
X_train<-X_train[,columnSelect]                     
X_train=cbind(X_train,Y_train,subject_train)            # Merging data (X_train, Y_train, subject_train)
colnames(X_train)<-c(colnames(X_train)[1:66],"activity","subject")

## PART 3 - PROCESSING 'TEST' DATA (X_test, Y_test, subject_test)

colnames(X_test)<-features$V2                          # Adding variable names from "features.txt"
columnSelect<-grep("mean\\(|std\\(",colnames(X_test))  # We only keep variables containing "mean()" or "std()" in their names
X_test<-X_test[,columnSelect]                     
X_test=cbind(X_test,Y_test,subject_test)                # Merging data (X_test, Y_test, subject_test)
colnames(X_test)<-c(colnames(X_test)[1:66],"activity","subject")

## PART 4 - MERGING 'TEST' AND 'TRAIN' DATASETS

data<-rbind(X_train,X_test)
data$activity_label<-activity_labels[data$activity,2]   # Adding explicit activity labels to our dataset
data<-data[order(data$subject,data$activity),]          # Sorting data by subject and activity

## PART 5 - CREATING A SECOND TIDY DATASET

# Using melt/cast functions from library reshape2 to create a tidy data set containing:
# the average of each variable, for each subject and each activity.
library(reshape2)
dataMelt <- melt(data,id=c("activity_label","subject","activity_label"))
tidyData <- dcast(dataMelt, activity_label+subject~variable,mean)

# Renaming variables (to explicitly mention they are averages)
newNames <- c("activity_label","subject")
for (i in colnames(tidyData)[3:68]){newNames<-c(newNames,paste("Average - ",i,sep=""))}
newNames <- c(newNames,"activity")
colnames(tidyData) <- newNames

# Just dropping the "activity" variable (we only keep "activity_label")
tidyData<-cbind(tidyData[,1:68])

## PART 6 - SAVING THE TIDY DATASET TO A TXT FILE

write.table(tidyData,file="tidyData.txt",row.names=FALSE)