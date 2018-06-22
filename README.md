# Getting-and-Cleaning-Data-Week-4-Assignment
This is an assignment for Coursera's Getting and Cleaning Data Course Week 4

## Content of repository
This repository contains:
- tidy.txt that contains average of each variable for each activity and each subject. 
- run_analysis.R that contains the R script to create the output in tidy.txt
- CodeBook.md that indicate all the variables and summaries calculated, along with units, and any other relevant information.

## Information about the data set used
Please refer to http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones for more information about the data set. In brief, measurements of sensor signals (accelerometer and gyroscope) were taken from a group of 30 volunteers. Each volunteer performed six activities wearing a smartphone (Samsung Galaxy S II) on their waist.

## run_analysis.R Script
The run_analysis.R script was written based on the following required steps in the assignment:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Code Book
The code book explains the variables and summaries calculated in tidy.txt