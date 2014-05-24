Run Analysis
============

This is a programming assignment for Coursera “Getting and Cleaning Data” class.
This text describes the steps used to create a tidy data file. 
The final data was constructed through the merger of test and training data.  
The data contains the variables showing means by subject and activity. 


####Before running this script:

* Install and load 'reshape' and 'reshape2' packages ( as the script will try to do )
* If you don't have the download data for the project, please click below: 

   https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip (Unzip into working directory)

A full description of this dataset is available at the site where the original data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

*	Set the directory "UCI HAR Dataset" as your working directory in your R console




####The steps to use run_analysis.R script: 

*	Download the run_analysis.R and saved it in your R working directory.
*	In R Studio, at the command line of the console type, you can decide to source("run_analysis.R")  
    or run the script line by line
    
*	The output file will be created in "UCI HAR Dataset" directory as "tidy.data.txt" after running the script


The script has also been commented with each step explained correctly producing an initial tidy.data data frame that is melted and cast to produce means for each combination of subject and activity. The tidy data consists of Factor variables, Subject and Activity, and the rest of the variables are numeric. Only the variables with mean and standard deviation are included in the tidy data.

####### You can find additional information about the script in CodeBook.md


