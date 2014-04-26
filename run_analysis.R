## The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set.
##########################################################################################################
## Set directory path
setwd("<replace with your directory path>/UCI HAR Dataset/")

## Read all raw data files
activity_labels <- read.table(file="activity_labels.txt")
features <- read.table(file="features.txt")
subject_train <- read.table(file="train/subject_train.txt")
subject_test <- read.table(file="test/subject_test.txt")
y_test <- read.table(file="test/y_test.txt")
y_train <- read.table(file="train/y_train.txt")
x_train <- read.table(file="train/x_train.txt")
x_test <- read.table(file="test/x_test.txt")

###########################################################################################
## Appropriately labels the data set
names(y_test) <- "Activity"
names(y_train) <- "Activity"
names(x_test) <- features[,2]
names(x_train) <- features[,2]
names(subject_train) <- "Subject"
names(subject_test) <- "Subject"
getActivityLabel <- function(x) activity_labels[x,2]
y_test$Activity <- getActivityLabel(y_test$Activity)
y_train$Activity <- getActivityLabel(y_train$Activity)

###########################################################################################
## Merges the training and the test sets to create one data set.
test <- cbind(subject_test, y_test, x_test)
train <- cbind(subject_train, y_train, x_train)
data <- rbind(train, test)
dim(data) #[1] 10299   563

###########################################################################################
## Extracts only the measurements on the mean and standard deviation for each measurement.
mean <- data[, grep("mean()", colnames(data), value=TRUE, fixed = TRUE)]
sdev <- data[, grep("std()", colnames(data), value=TRUE)]
mean_sdev  <-cbind(mean, sdev)
dim(mean_sdev) #[1] 10299    66

###########################################################################################
## Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
## Compute the averages of the retained variables, grouped by Subject & Activity
means <- aggregate(x=data[,c(3:81)],by=list(data$Subject, data$Activity),FUN=mean)
names(means)[1:2] <- c("Subject","Activity")
## Output the tidy dataset of means
write.table(means, "tidy_data.txt",sep=',')
