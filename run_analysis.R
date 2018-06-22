# Download dataset and unzip data set
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
              destfile="./UCIDataset")
#Unzip dataset
unzip(zipfile ="./UCIDataset", exdir = "./UCIData")

# Read features 
features <- read.table("./UCIData/UCI HAR Dataset/features.txt", as.is = TRUE)

# Read activity labels
activity <- read.table("./UCIData/UCI HAR Dataset/activity_labels.txt")
colnames(activity)<- c ("activityID", "activityLabel")

# Read all train and test tables 
x_train <- read.table("./UCIData/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCIData/UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./UCIData/UCI HAR Dataset/train/subject_train.txt")
x_test <- read.table("./UCIData/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCIData/UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./UCIData/UCI HAR Dataset/test/subject_test.txt")

# REQUIRED STEP 1: Merges all train and test tables to create one data set
train_total <- cbind(subject_train, y_train, x_train)
test_total <- cbind(subject_test,y_test, x_test)
all.data <- rbind(train_total,test_total)

#Assign column names
colnames(all.data) <- c("subject","activity", features[,2])

# REQUIRED STEP 2: Extracts only the measurements on the mean and standard deviation for each measurement.
all.data2 <- all.data[,grepl("subject|activity|mean|std", colnames(all.data))]

# REQUIRED STEP 3: Uses descriptive activity names to name the activities in the data set
all.data2$activity <- factor(all.data2$activity, levels=activity[,1], 
                             labels = activity[,2])

# REQUIRED STEP 4: Appropriately labels the data set with descriptive variable names
# Expand the abbreviations in the column names
names(all.data2) <- gsub("^t", "time", names(all.data2))
names(all.data2) <- gsub("^f", "frequency", names(all.data2))
names(all.data2) <- gsub("Acc", "Accelerometer", names(all.data2))
names(all.data2) <- gsub("Gyro", "Gyroscope", names(all.data2))
names(all.data2) <- gsub("Mag", "Magnitude", names(all.data2))
names(all.data2) <- gsub("BodyBody", "Body", names(all.data2))

# REQUIRED STEP 5: Creates a second independent tidy data set 
# with the average of each variable for each activity and each subject
tidydata <- aggregate(.~subject + activity, all.data2, mean)
tidydata <- tidydata[order(tidydata$subject,tidydata$activity),] 

# Write the output to file "tidy.txt"
write.table(tidydata,"tidy.txt", row.names = FALSE, quote = FALSE)
