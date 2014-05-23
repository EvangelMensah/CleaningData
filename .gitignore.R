library(reshape)
library(reshape2)

# The directory "UCI HAR Dataset" should be in the working directory of your R

#get all the paths for all Train ( X , y , subject ) and Test ( X, Y, subject) variables
xtestpath <- 'UCI HAR Dataset\\test\\X_test.txt'
ytestpath <- 'UCI HAR Dataset\\test\\y_test.txt'
subtestpath <- 'UCI HAR Dataset\\test\\subject_test.txt'
xtrainpath <- 'UCI HAR Dataset\\train\\X_train.txt'
ytrainpath <- 'UCI HAR Dataset\\train\\y_train.txt'
subtrainpath <- 'UCI HAR Dataset\\train\\subject_train.txt'
  
# read all the test and train data
xtest <- read.table(xtestpath,stringsAsFactors=FALSE)
ytest <- read.table(ytestpath,stringsAsFactors=FALSE)
xtrain <- read.table(xtrainpath,stringsAsFactors=FALSE)
ytrain <- read.table(ytrainpath,stringsAsFactors=FALSE)
subtest <- read.table(subtestpath,stringsAsFactors=FALSE)
subtrain <- read.table(subtrainpath,stringsAsFactors=FALSE)

