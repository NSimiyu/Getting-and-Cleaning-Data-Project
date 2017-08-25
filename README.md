# Introduction
This repository has been created as part of the project of the Getting and Cleaning Data Data Science Course of Coursera.
The repository contains four files namely: `run_analysis.R`, `README.md`, `CodeBook.md` and `tidy.txt`.

# Purpose
The purpose of this project is to create a tidy dataset from training and test data that was collected through smartphones. The tidy dataset is created through a single script (`run_analysis.R`) in the R environment. This document explains how the script works in the next section.

# How run_analysis.R works (Methods)
`run_analysis.R` has been developed based on the requirements of the course project. Specifically, it does the following in sequence, it:

1. Downloads, unzips and reads/loads the datasets.
2. Merges the training and test datasets into one dataset.
3. Extracts only the measurements on the mean and standard deviation for each measurement. 
4. Uses descriptive activity names to name the activities in the dataset.
5. Labels the dataset with descriptive variable names, appropriately. 
6. Creates a second, independent tidy dataset with the average of each variable for each activity and each subject (`tidy.txt`).