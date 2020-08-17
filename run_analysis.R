library(dplyr)
library(data.table)
feature <- read.table("features.txt", header=FALSE)
activity_labels <- read.table("activity_labels.txt", header = FALSE)
X_test <- read.table("test/X_test.txt",header = FALSE)
subject_test <- read.table("test/subject_test.txt",header=FALSE)
y_test <- read.table("test/y_test.txt", header = FALSE)
subject_train <- read.table("train/subject_train.txt", header = FALSE)
X_train <- read.table("train/X_train.txt", header = FALSE)
y_train <- read.table("train/y_train.txt", header= FALSE)
subject_test <-rename(subject_test,subject= V1)
y_test <- rename(y_test, activity = V1)
subject_train <-rename(subject_train,subject= V1)
y_train <- rename(y_train, activity = V1)
test <- cbind(subject_test,y_test, X_test)
train <- cbind(subject_train, y_train, X_train)

##Merges the training and the test sets to create one data set
merged.data<- rbind(train,test)
merged.data <-setnames(merged.data, 3:563, feature$V2)

##Extracts only the measurements on the mean and standard deviation for each measurement
data <- merged.data[,c(1,2,grep("mean|std",names(merged.data)))]
##Uses descriptive activity names to name the activities in the data set
data$subject <- as.factor(data$subject)
data$activity<- as.factor(data$activity)
levels(data$activity)<- activity_labels$V2
##Appropriately labels the data set with descriptive variable names.
data <- rename_with(data, ~tolower(gsub("()","",.x,fixed = TRUE)))
data <- rename_with(data, ~gsub("-",".",.x,fixed = TRUE))
write.table(data,file = "HAR_Dataset.csv")
##creates a second, independent tidy data set with the average of each variable for each activity and each subject.
data2<-data%>% group_by(subject,activity)%>% summarise_all(mean)
write.table(data2, file="mean_dataset_bysubject_byactivity.csv")
