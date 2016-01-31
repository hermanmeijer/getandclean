##Raw data files (input)
#features.txt
A list of 561 id-name pairs for the measured features
Only the mean and standard deviation are needed e.g. 
1 tBodyAcc-mean()-X
4 tBodyAcc-std()-X
these are only the features with "mean()" or "std()" in the name

#activity_labels.txt
A list of 6 id-name pairs for the activities (1-6), e.g.
1 WALKING
6 LAYING

#train/subject_train.txt
A list of 7352 subject id's. This are the id's of the person (1-30) who is measured in the training phase. The number of the row will be the measurement id.

#train/y_train.txt
A list of 7352 activity id's as has been monitored during the training phase

#train/X_train.txt
The training set of the 7352 observations of the 561 variables.

#files in test/
Similar files are in the test folder: subject_test.txt, y_test and X_test.txt. Only they have 2947 measurements

#other files
Files in the Inertial Signal subfolders are not part of the current analysis.

##Transformations
The goal is to create 1 tidy dataset for only the std and mean variables:
+ Combine (merge) the measruements for training (train/X_train.txt) and testing (test/X_test.txt)
+ Extract only the rows for which the feature name contains std() or mean()
+ Add a column for the activity name and one for the subject number
+ Make a variable names desctriptive
+ The resulting data set is called result1
+ Create a new independent tidy data set (result2) with the average of each variable for each activity and each subject

##resulting data sets
Result 1 is a tidy data set containing only the features on the mean and standard deviation

Result2 is a tidy data set where the mean and standard deviation of the features of result1 are grouped by subject and activity 

