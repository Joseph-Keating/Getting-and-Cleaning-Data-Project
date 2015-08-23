#This code reads files collected  from the accelerometers from the Samsung Galaxy S smartphone
# It does the following
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#Set working directory
setwd("C:/Users/Joseph Keating/Desktop/Coursera/datasciencecoursera/Getting and Cleaning Data/UCI HAR Dataset")

#Download the 'Wearable' data
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "./Wearable.zip")

library(dplyr)

#Read the 'features' file. This describes each of the 561 variables in the 'X_test' and 'x_train' files.
#It will help to name the variables in the final tidy data set.
features <- read.table("./features.txt")

#Read the 'activities' file. This describes each of the six activities. 
activities <- read.table("./activity_labels.txt")

#Read the test and training files giving the identification of the activities of each row of the results. 
#Combine the files in one data frame
y_test <- read.table("./test/y_test.txt")
y_train <- read.table("./train/y_train.txt")
all_y <- rbind(y_test,y_train)
all_y <- rename(all_y,Activity=V1)

#Read the test and training files giving the results for each activity and subject.
#Combine the files in one data frame
x_test <- read.table("./test/x_test.txt")
x_train <- read.table("./train/x_train.txt")
all_x <- rbind(x_test,x_train)

#Read the test and training files giving the identification of the subjects of each row of the results. 
#Combine the files in one data frame
subject <- read.table("./test/subject_test.txt")
subject_train <- read.table("./train/subject_train.txt")
all_subject <- rbind(subject,subject_train)
all_subject <- rename(all_subject, Subject=V1)

#Use the names from the features file as initial descriptive column names for the results
features$V2 <- as.character(features$V2)
colnames(all_x) <- paste0(features$V2,c(1:561))

#Keep only those columns of the results that either measure a mean or a standard deviation
all_x2 <- select(all_x,contains ("mean"))
all_x3 <- select(all_x,contains ("std"))
all_x2 <- cbind(all_x2,all_x3)

#Combine the subject, activity and result data in one data frame
all_data <- cbind(all_subject,all_y,all_x2)

# Convert the activity variables to descriptions rather than numbers.
all_data2 <- merge(all_data, activities,by.x="Activity",by.y="V1",all=TRUE)
all_data2 <- rename(all_data2,ActivityDesc=V2)
all_data2$Activity <- as.character(all_data2$Activity)
all_data2$ActivityDesc <- as.character(all_data2$ActivityDesc)
all_data2$Activity <- all_data2$ActivityDesc
all_data2 <- select(all_data2,-ActivityDesc)

#Tidy up the column names describing the results
colnames(all_data2) <- sub("BodyBody","Body",colnames(all_data2))
colnames(all_data2) <- gsub("[^[:alnum:]]", "",colnames(all_data2))
colnames(all_data2) <- gsub("[[:digit:]]", "",colnames(all_data2))

#Order dataset by Subject and Activity
all_data2 <- arrange(all_data2,Subject,Activity)

#Summarise the dataset for each Subject and Activity
all_data3 <- group_by(all_data2,Subject,Activity)
all_data3 <- summarise_each(all_data3,funs(mean))

write.table(all_data3,"summary_wearable.txt",row.name=FALSE)
