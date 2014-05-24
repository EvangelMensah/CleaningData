### Getting and Cleaning Data Project 

## **************** Getting data and load libraries code segment *****************

# Load the necessary libraries 
library(plyr)
library(reshape)
library(reshape2)

# Set working directory: "The directory "UCI HAR Dataset" should be in the working directory of your R"

setwd("./UCI HAR Dataset")



## **************** Reading and transformation code segment *****************

#Read subject file from both test and train data into vector

subject.test <- read.table("./test/subject_test.txt")
subject.train <- read.table("./train/subject_train.txt")
subject <- rbind(subject.test,subject.train)
colnames(subject) <- c("subject")       ### Renaming columns name to subject
subject[, 1] <- as.factor(subject[, 1]) #Convert subject to a factor


#Create an activity vector from both test and train data  

activity.y.test <- read.table("./test/y_test.txt")
activity.y.train <- read.table("./train/y_train.txt")
activity <- rbind(activity.y.test, activity.y.train)
colnames(activity) <- c("activity")


# Adding labels for activity column data eg. walking etc..  

sorting.name1 <- scan("./activity_labels.txt", what = "character", sep=" ")
nn <- seq(2, length(sorting.name1), by= 2)
activity.labels <- sorting.name1[nn]
activity[, 1] <-factor(activity[, 1], labels = activity.labels) # make activity a factor


#Create an feature vector from both test and train data 

X.test <- read.table("./test/X_test.txt")
X.train <- read.table("./train/X_train.txt")
X.combined <- rbind(X.test, X.train)


# Adding labels for activity column data eg. walking etc..  

sorting.name2 <- scan("./features.txt", what = "character", sep = " ")
mm <- seq(2,length(sorting.name2), by= 2)
features <- sorting.name2[mm]

names(X.combined) <- features


# Column combine data of subject, activity and feature

new.data <- cbind(subject, activity, X.combined)


# Select means, standard deviation from new.data
# Use grep function to find Mean and STD

mean1 <- grep("[Mm][Ee][Aa][Nn]", names(new.data)) # Subsetting means from new.data
std1 <- grep("[Ss][Tt][Dd]", names(new.data)) # # Subsetting standard dev. from new.data 
combined.vars <- append(mean1, std1, after = length(mean1))


# Keep column numbers with mean and standard dev. data features

col.num <- append(c(1,2), combined.vars, after = length(c(1,2)))
col.num <- sort(col.num) 
tidy.data<- new.data[,col.num]


# Melting and Casting the data to get Mean for each parameter vrs each comination of  Subject + Activity

tidy.data <- melt(tidy.data)
tidy <-cast(tidy.data, ... ~ variable, mean) #means for each subject's activities

tidy <- data.frame(tidy)
write.table(tidy, "tidydata.txt")  # write the tidy data to a file in your working directory
 



