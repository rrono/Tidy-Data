ABOUT : 
This data was derived according to the script contained in the file run_analysis.R as part of Coursera course  Getting and Cleaning Data.

Original data from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Data Set Information:
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

Attribute Information:

For each record in the dataset it is provided: 
# Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
# Triaxial Angular velocity from the gyroscope. 
# A 561-feature vector with time and frequency domain variables. 
# Its activity label. 
# An identifier of the subject who carried out the experiment.

Reading raw dataset includes the following files:

# README.txt
# features_info.txt': Shows information about the variables used on the feature vector.
# features.txt': List of all features.
# activity_labels.txt': Links the class labels with their activity name.
# train/X_train.txt': Training set.
# train/y_train.txt': Training labels.
# test/X_test.txt': Test set.
# test/y_test.txt': Test labels. 

Adding descriptive labels:

After reading into the raw file an additional column "Activity" is inserted to give a descriptive label name for each row. Column details six activities WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, and LAYING.

Merges the training and the test sets to create one data set:

Combined (cbind) dataset subject_test, y_test and x_test and named it "test", combined dataset subject_train, y_train, x_train and named it "train".  Combined (rbin) test and train into one tidy dataset.

Create a vector of column indexes of mean and standard deviation measurements. Extracts only the measurements on the mean and standard deviation for each measurement.

Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
Compute the averages of the retained variables, grouped by Subject & Activity.


Ordered list of variables:

1  subject
2  activityName
3  timeBodyAccMeanXAxis
4  timeBodyAccMeanYAxis
5  timeBodyAccMeanZAxis
6  timeBodyAccStdXAxis
7  timeBodyAccStdYAxis
8  timeBodyAccStdZAxis
9  timeGravityAccMeanXAxis
10  timeGravityAccMeanYAxis
11  timeGravityAccMeanZAxis
12  timeGravityAccStdXAxis
13  timeGravityAccStdYAxis
14  timeGravityAccStdZAxis
15  timeBodyAccJerkMeanXAxis
16  timeBodyAccJerkMeanYAxis
17  timeBodyAccJerkMeanZAxis
18  timeBodyAccJerkStdXAxis
19  timeBodyAccJerkStdYAxis
20  timeBodyAccJerkStdZAxis
21  timeBodyGyroMeanXAxis
22  timeBodyGyroMeanYAxis
23  timeBodyGyroMeanZAxis
24  timeBodyGyroStdXAxis
25  timeBodyGyroStdYAxis
26  timeBodyGyroStdZAxis
27  timeBodyGyroJerkMeanXAxis
28  timeBodyGyroJerkMeanYAxis
29  timeBodyGyroJerkMeanZAxis
30  timeBodyGyroJerkStdXAxis
31  timeBodyGyroJerkStdYAxis
32  timeBodyGyroJerkStdZAxis
33  timeBodyAccMagMean
34  timeBodyAccMagStd
35  timeGravityAccMagMean
36  timeGravityAccMagStd
37  timeBodyAccJerkMagMean
38  timeBodyAccJerkMagStd
39  timeBodyGyroMagMean
40  timeBodyGyroMagStd
41  timeBodyGyroJerkMagMean
42  timeBodyGyroJerkMagStd
43  fftBodyAccMeanXAxis
44  fftBodyAccMeanYAxis
45  fftBodyAccMeanZAxis
46  fftBodyAccStdXAxis
47  fftBodyAccStdYAxis
48  fftBodyAccStdZAxis
49  fftBodyAccJerkMeanXAxis
50  fftBodyAccJerkMeanYAxis
51  fftBodyAccJerkMeanZAxis
52  fftBodyAccJerkStdXAxis
53  fftBodyAccJerkStdYAxis
54  fftBodyAccJerkStdZAxis
55  fftBodyGyroMeanXAxis
56  fftBodyGyroMeanYAxis
57  fftBodyGyroMeanZAxis
58  fftBodyGyroStdXAxis
59  fftBodyGyroStdYAxis
60  fftBodyGyroStdZAxis
61  fftBodyAccMagMean
62  fftBodyAccMagStd
63  fftBodyBodyAccJerkMagMean
64  fftBodyBodyAccJerkMagStd
65  fftBodyBodyGyroMagMean
66  fftBodyBodyGyroMagStd
67  fftBodyBodyGyroJerkMagMean
68  fftBodyBodyGyroJerkMagStd
