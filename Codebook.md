# Code Book for 'tidyData.txt'

## General organization
Columns 1 and 2 give you the subject number and activity (laying, standing, walking...)

Each row gives you the average value of each variable, for each (activity, subject) combination.

Each variable is stored in a separate column (columns 3 to 68).

## Variable dictionary
- **activity_label**: the activity performed by the subject.
    - WALKING
    - WALKING_UPSTAIRS
    - WALKING_DOWNSTAIRS
    - SITTING
    - STANDING
    - LAYING

- **subject**: the subject number being tested.
    - Range: from 1 to 30

The following 66 variables are stored in separate columns. 'XYZ' means there are 3 variables, each for one of the (X,Y,Z) axes.
Only 'std()' and 'mean()' variables were kept from the original dataset.

- Average - tBodyAcc-mean()-XYZ
- Average - tBodyAcc-std()-XYZ
- Average - tGravityAcc-mean()-XYZ
- Average - tGravityAcc-std()-XYZ
- Average - tBodyAccJerk-mean()-XYZ
- Average - tBodyAccJerk-std()-XYZ
- Average - tBodyGyro-mean()-XYZ
- Average - tBodyGyro-std()-XYZ
- Average - tBodyGyroJerk-mean()-XYZ
- Average - tBodyGyroJerk-std()-XYZ
- Average - tBodyAccMag-mean()
- Average - tBodyAccMag-std()
- Average - tGravityAccMag-mean()
- Average - tGravityAccMag-std()
- Average - tBodyAccJerkMag-mean()
- Average - tBodyAccJerkMag-std()
- Average - tBodyGyroMag-mean()
- Average - tBodyGyroMag-std()
- Average - tBodyGyroJerkMag-mean()
- Average - tBodyGyroJerkMag-std()
- Average - fBodyAcc-mean()-XYZ
- Average - fBodyAcc-std()-XYZ
- Average - fBodyAccJerk-mean()-XYZ
- Average - fBodyAccJerk-std()-XYZ
- Average - fBodyGyro-mean()-XYZ
- Average - fBodyGyro-std()-XYZ
- Average - fBodyAccMag-mean()
- Average - fBodyAccMag-std()
- Average - fBodyBodyAccJerkMag-mean()
- Average - fBodyBodyAccJerkMag-std()
- Average - fBodyBodyGyroMag-mean()
- Average - fBodyBodyGyroMag-std()
- Average - fBodyBodyGyroJerkMag-mean()
- Average - fBodyBodyGyroJerkMag-std()
