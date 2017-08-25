# Check if folder exists, if not create it

if(!file.exists("./gcdwk4")) {dir.create("./gcdwk4")}

# Download dataset zip file into the folder created above and unzip it

download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile = "./gcdwk4/dataset.zip")
unzip("./gcdwk4/dataset.zip", exdir = "./gcdwk4")
dir("./gcdwk4")

# Load required packages dplyr, plyr, readr, data.table
if(!require(readr)) {library(readr)}
if(!require(data.table)) {library(data.table)}

# Read the training,tests, feature and activity labels

testX <- read.table("./gcdwk4/UCI HAR Dataset/test/X_test.txt")
testY <- read.table("./gcdwk4/UCI HAR Dataset/test/y_test.txt")
feats <- read.table("./gcdwk4/UCI HAR Dataset/features.txt")
Labact = read.table("./gcdwk4/UCI HAR Dataset/activity_labels.txt")
trainSubs <- read.table("./gcdwk4/UCI HAR Dataset/train/subject_train.txt")
trainX <- read.table("./gcdwk4/UCI HAR Dataset/train/X_train.txt")
trainY <- read.table("./gcdwk4/UCI HAR Dataset/train/y_train.txt")
testSubs <- read.table("./gcdwk4/UCI HAR Dataset/test/subject_test.txt")

# Assign column names

colnames(trainX) <- feats[,2] 
colnames(trainY) <-"activityId"
colnames(trainSubs) <- "subjectId"
colnames(testX) <- feats[,2] 
colnames(testY) <- "activityId"
colnames(testSubs) <- "subjectId"
colnames(Labact) <- c('activityId','activityType')

# Merge datasets (training and test) and extract mean and standard deviation for each measurement

mrgtraintest <- rbind(cbind(trainY, trainSubs, trainX), cbind(testY, testSubs, testX))

mean_std_logical <- (grepl("activityId" , colnames(mrgtraintest)) | 
                         grepl("subjectId" , colnames(mrgtraintest)) | 
                         grepl("mean.." , colnames(mrgtraintest)) | 
                         grepl("std.." , colnames(mrgtraintest)) 
)

mean_std_data_unnamed <- mrgtraintest[ , mean_std_logical == TRUE]

# Name activities with activity labels (Labact)

mean_std_data_named <- merge(mean_std_data_unnamed, Labact,by='activityId', all.x=TRUE)

# Create independent tidy dataset with the average of each variable for each activity and each subject

tidy_mean_std <- aggregate(. ~subjectId + activityType, mean_std_data_named, mean)
tidy_mean_std <- tidy_mean_std[order(tidy_mean_std$subjectId, tidy_mean_std$activityType),]

# View result and structure of the tidy dataset
View(tidy_mean_std)
str(tidy_mean_std)

# Store the tidy dataset in tidy.txt

write.table(tidy_mean_std, "./gcdwk4/tidy.txt", row.name=FALSE)