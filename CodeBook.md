# Code Book
This is a code book explaining the variables and summaries calculated in the tidy.txt file produced by the run_analysis.R script.

## Original data set
The data set were from experiments carried out with 30 volunteers. Each volunteer performed 6 activities (i.e.,WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. The obtained dataset were randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The original data set includes
- README.txt
- features_info.txt: Shows information about the variables used on the feature vector.
- features.txt: List of all features.
- activity_labels.txt: Links the class labels with their activity name.
- X_train.txt: Training set.
- y_train.txt: Training labels.
- subject_train.txt: identifier of subjects in the training set
- X_test.txt: Test set.
- y_test.txt: Test labels.
- subject_test.txt: identifier of subjects in the test set

## run_analysis.R script
The script performs the following steps:
- download and unzip the data set
- reads and merges all train and test tables in one data set
- Assign column names and extract only measurements on mean and standard deviation
- Assign descriptive activity names to name the activities.
- Changed the abbreviated descriptions accordingly:
"t" to "time",
"f" to "frequency"
"Acc" to "Accelerometer"
"Gyro" to "Gyroscope"
"Mag" to "Magnitude"
"BodyBody" to "Body"
- Creates a second independent tidy data set with the average of each variable for each activity and each subject

## The tidy.txt includes:
1. Subject ID: from 1 to 30. 
2. Activity Labels: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
3. For each subject and each activity, the average mean and std (i.e., standard deviation) for each signal:
-timeBodyAccelerometer -XYZ
-timeGravityAccelerometer-XYZ
-timeBodyAccelerometerJerk-XYZ
-timeBodyGyroscope-XYZ
-timeBodyGyroscopeJerk-XYZ
-timeBodyAccelerometerMagnitude
-timeGravityAccelerometerMagnitude
-timeBodyAccelerometerJerkMagnitude
-timeBodyGyroscopeMagnitude
-timeBodyGyroscopeJerkMagnitude
-frequencyBodyAccelerometer -XYZ
-frequencyBodyAccelerometer Jerk-XYZ
-frequencyBodyGyroscope-XYZ
-frequencyBodyAccelerometerMagnitude
-frequencyBodyAccelerometerJerkMagnitude
-frequencyBodyGyroscopeMagnitude
-frequencyBodyGyroscopeJerkMagnitude

### Reference
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.