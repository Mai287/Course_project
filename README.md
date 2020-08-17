# Course_project
Firstly, all the data files are read using the read.table function.
## Merges the training and the test sets to create one data set
Firstly, the test dataframe was created by column combining three data files, which are X_test, Y_test and subject_test. The same procedure was applied to formulate the train dataframe from three files X_train, y_train and subject_train. After having these two dataframes (train and test), the mergeddata was created by row combining the two dataframes.
## Extracts only the measurements on the mean and standard deviation for each measurement
The grep function was used to find the position of all columns containing mean or standard deviation value. Base on the result of the grep function, the data on the mean and standard deviation is created by subsetting from the mergeddata.
## Uses descriptive activity names to name the activities in the data set
At first, the values in the two columns activity and subject is converted to factor. The to name the activities, the levels function is used, the names of the activity was taken from the actiity_labels file.
## Appropriately labels the data set with descriptive variable names.
At this step, the rename function was applied to change the column names (V1 to V561) to the variable names provided by the features.txt file. Also, the function rename_with combined with tolower and gsub was used to change all the letter in the column names to lowercase and remove the "()" in the names. I also substitue the "-" by ".", so that the names look better.
the data is then saved by using the write.table function.
## Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
To create the required data, I used the chain with group_by (by subject and by activity), and summarise_all to summarise the data with mean value.
the data is then saved by the write.table function.
