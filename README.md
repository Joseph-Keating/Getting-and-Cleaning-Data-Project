### Introduction

This repo tidies and summarizes the data taken from measurements made on 30 volunteers wearing the Samsung Galaxy S smartphone. The background to the data is given at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The script run_analysis.R;

1. Merges the training and the test sets to create one data set.

2. Extracts only the measurements on the mean and standard deviation for each measurement. Note - I included any variable from the original data that had 'mean' or 'std' anywhere in the variable name.

3. Uses descriptive activity names to name the activities in the data set. The activities were coded 1 to 6 in the original data. The script replaces these numbers with the names of the activities

4. Appropriately labels the data set with descriptive variable names. These variable names were taken from a list of variable names provided with the original data. The script tidies these names up removing non alphanumeric characters. It also corrects a typo in the original variable list.
The tidy data set resulting at the end of step 4 is called 'all_data2'

5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. This data set is called 'all_data3' and is written to a text file.


The Codebook.md file describes the variables in the tidy file and in the summary file
