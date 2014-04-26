ABOUT : 
This data was derived according to the script contained in the file run_analysis.R as part of Coursera course  Getting and Cleaning Data.

Original data from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Data Set Information:
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

Attribute Information:

For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

Reading raw dataset includes the following files:

- README.txt
- features_info.txt': Shows information about the variables used on the feature vector.
- features.txt': List of all features.
- activity_labels.txt': Links the class labels with their activity name.
- train/X_train.txt': Training set.
- train/y_train.txt': Training labels.
- test/X_test.txt': Test set.
- test/y_test.txt': Test labels. 

Adding descriptive labels:

After reading into the raw file an additional column "Activity" is inserted to give a descriptive label name for each row. Column details six activities WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, and LAYING.

Merges the training and the test sets to create one data set:

Combined (cbind) dataset subject_test, y_test and x_test and named it "test", combined dataset subject_train, y_train, x_train and named it "train".  Combined (rbin) test and train into one tidy dataset.

Create a vector of column indexes of mean and standard deviation measurements. Extracts only the measurements on the mean and standard deviation for each measurement.

Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
Compute the averages of the retained variables, grouped by Subject & Activity.


Ordered list of variables:

1.	timeBodyAccMeanXAxis
2.	timeBodyAccMeanYAxis
3.	timeBodyAccMeanZAxis
4.	timeBodyAccStdXAxis
5.	timeBodyAccStdYAxis
6.	timeBodyAccStdZAxis
7.	timeGravityAccMeanXAxis
8.	timeGravityAccMeanYAxis
9.	timeGravityAccMeanZAxis
10.	timeGravityAccStdXAxis
11.	timeGravityAccStdYAxis
12.	timeGravityAccStdZAxis
13.	timeBodyAccJerkMeanXAxis
14.	timeBodyAccJerkMeanYAxis
15.	timeBodyAccJerkMeanZAxis
16.	timeBodyAccJerkStdXAxis
17.	timeBodyAccJerkStdYAxis
18.	timeBodyAccJerkStdZAxis
19.	timeBodyGyroMeanXAxis
20.	timeBodyGyroMeanYAxis
21.	timeBodyGyroMeanZAxis
22.	timeBodyGyroStdXAxis
23.	timeBodyGyroStdYAxis
24.	timeBodyGyroStdZAxis
25.	timeBodyGyroJerkMeanXAxis
26.	timeBodyGyroJerkMeanYAxis
27.	timeBodyGyroJerkMeanZAxis
28.	timeBodyGyroJerkStdXAxis
29.	timeBodyGyroJerkStdYAxis
30.	timeBodyGyroJerkStdZAxis
31.	timeBodyAccMagMean
32.	timeBodyAccMagStd
33.	timeGravityAccMagMean
34.	timeGravityAccMagStd
35.	timeBodyAccJerkMagMean
36.	timeBodyAccJerkMagStd
37.	timeBodyGyroMagMean
38.	timeBodyGyroMagStd
39.	timeBodyGyroJerkMagMean
40.	timeBodyGyroJerkMagStd
41.	fftBodyAccMeanXAxis
42.	fftBodyAccMeanYAxis
43.	fftBodyAccMeanZAxis
44.	fftBodyAccStdXAxis
45.	fftBodyAccStdYAxis
46.	fftBodyAccStdZAxis
47.	fftBodyAccJerkMeanXAxis
48.	fftBodyAccJerkMeanYAxis
49.	fftBodyAccJerkMeanZAxis
50.	fftBodyAccJerkStdXAxis
51.	fftBodyAccJerkStdYAxis
52.	fftBodyAccJerkStdZAxis
53.	fftBodyGyroMeanXAxis
54.	fftBodyGyroMeanYAxis
55.	fftBodyGyroMeanZAxis
56.	fftBodyGyroStdXAxis
57.	fftBodyGyroStdYAxis
58.	fftBodyGyroStdZAxis
59.	fftBodyAccMagMean
60.	fftBodyAccMagStd
61.	fftBodyBodyAccJerkMagMean
62.	fftBodyBodyAccJerkMagStd
63.	fftBodyBodyGyroMagMean
64.	fftBodyBodyGyroMagStd
65.	fftBodyBodyGyroJerkMagMean
66.	fftBodyBodyGyroJerkMagStd

