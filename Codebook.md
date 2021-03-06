Both the tidy data file and the summarized file created by the run_analysis.R script have the following variables;

###Variable 1. ACTIVITY
Nature of Activity being measured. This takes the following values

        WALKING

        WALKING_UPSTAIRS

        WALKING_DOWNSTAIRS

        SITTING

        STANDING

        LAYING

###Variable 2. SUBJECT

 Identification code of the volunteer to whom the measurements apply
 
 This takes the values 1 to 30

###Variables 3 to 88. These are the Result variables for each activity and subject.

Only those variables which measure a mean or a standard deviation have been included.

Units of measurement: All measurements are normalized and bounded within [-1,1].

The inclusion of 'mean' or 'std' in the variable name indicates whether
it is a mean or a standard deviation variable. 

The letters 'X', 'Y' and 'Z' at the end of the variable name indicate 3-axial signals in the X, Y and Z directions.

The inclusion of 'Acc' or 'Gyro' in the Variable name indicates whether the measurement was on the accelerometer or gyroscope respectively

Variables beginning 't' are time domain variables. Variables beginning 'f' are frequency domain variables.

The inclusion of 'Body' in the variable name indicates a body motion component.

The inclusion of 'Gravity' in the variable name indicates a gravitational motion component.

The inclusion of MeanFreq in the variable name indicates weighted average of the frequency components to obtain a mean frequency

The inclusion of 'angle' in the variable name indicates the angle between two vectors

The inclusion of 'Jerk' in the variable name indicates Jerk signals (derivatives in time of the body linear acceleration and angular velocity)

The inclusion of 'Mag' in the variable name indicates the magnitude of signals using the Euclidean norm


Variables 3 to 88 are as follows:

 
tBodyAccmeanX
tBodyAccmeanY
tBodyAccmeanZ 

tGravityAccmeanX
tGravityAccmeanY
tGravityAccmeanZ

tBodyAccJerkmeanX
tBodyAccJerkmeanY
tBodyAccJerkmeanZ

tBodyGyromeanX
tBodyGyromeanY
tBodyGyromeanZ

tBodyGyroJerkmeanX
tBodyGyroJerkmeanY
tBodyGyroJerkmeanZ

tBodyAccMagmean

tGravityAccMagmean

tBodyAccJerkMagmean

tBodyGyroMagmean

tBodyGyroJerkMagmean

fBodyAccmeanX
fBodyAccmeanY
fBodyAccmeanZ

fBodyAccmeanFreqX
fBodyAccmeanFreqY
fBodyAccmeanFreqZ

fBodyAccJerkmeanX
fBodyAccJerkmeanY
fBodyAccJerkmeanZ

fBodyAccJerkmeanFreqX
fBodyAccJerkmeanFreqY
fBodyAccJerkmeanFreqZ

fBodyGyromeanX
fBodyGyromeanY
fBodyGyromeanZ

fBodyGyromeanFreqX
fBodyGyromeanFreqY
fBodyGyromeanFreqZ

fBodyAccMagmean

fBodyAccMagmeanFreq

fBodyAccJerkMagmean

fBodyAccJerkMagmeanFreq

fBodyGyroMagmean

fBodyGyroMagmeanFreq

fBodyGyroJerkMagmean

fBodyGyroJerkMagmeanFreq

angletBodyAccMeangravity

angletBodyAccJerkMeangravityMean

angletBodyGyroMeangravityMean

angletBodyGyroJerkMeangravityMean


angleXgravityMean
angleYgravityMean
angleZgravityMean


tBodyAccstdX
tBodyAccstdY
tBodyAccstdZ

tGravityAccstdX
tGravityAccstdY
tGravityAccstdZ

tBodyAccJerkstdX
tBodyAccJerkstdY
tBodyAccJerkstdZ

tBodyGyrostdX
tBodyGyrostdY
tBodyGyrostdZ

tBodyGyroJerkstdX
tBodyGyroJerkstdY
tBodyGyroJerkstdZ

tBodyAccMagstd

tGravityAccMagstd

tBodyAccJerkMagstd

tBodyGyroMagstd

tBodyGyroJerkMagstd


fBodyAccstdX
fBodyAccstdY
fBodyAccstdZ

fBodyAccJerkstdX
fBodyAccJerkstdY
fBodyAccJerkstdZ

fBodyGyrostdX
fBodyGyrostdY
fBodyGyrostdZ

fBodyAccMagstd

fBodyAccJerkMagstd

fBodyGyroMagstd

fBodyGyroJerkMagstd

 
