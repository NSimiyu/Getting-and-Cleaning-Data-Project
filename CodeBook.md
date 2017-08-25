# Introduction
This document is a codebook of the tidy dataset (tidy.txt) generated as part of the Getting and Cleaning Data Project of the Data Science Course by Coursera. It describes each of the variables in the dataset which is generated using the `run_analysis.R` script.

# Data Processing Methods
The script `run_analysis.R` generates this dataset through the following methods, after downloading the base datasets:

1. Merges the training and test datasets into one dataset (`mrgtraintest`) using `rbind()` and `cbind()`.
2. Extracts only the measurements on the mean and standard deviation for each measurement by subsetting through a logical (`mean_std_logical`). 
3. Names the activities in the dataset with the descriptive activity names using `colnames()`.
4. Labels the dataset with descriptive variable names using `merge()`. 
5. Creates an independent tidy dataset with the average of each variable for each activity and each subject (tidy.txt) using `write.table()`.

#Variables
The following are the variables in the dataset:

1. subjectId
	+ Test Subject identifier (30 test subjects)
	+ Integer
	+ Values: 1-30
2. activityType
	+ Description of activity
	+ Factor
	+ Values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
3. activityId 
	+ Activity identifier
	+ Integer
	+ 1: WALKING
	+ 2: WALKING_UPSTAIRS
	+ 3: WALKING_DOWNSTAIRS
	+ 4: SITTING
	+ 5: STANDING 
	+ 6: LAYING
4. tBodyAcc-mean()-X
	+ X axis timed body acceleration signal mean
	+ Numeric
5. tBodyAcc-mean()-Y
	+ Y axis timed body acceleration signal mean
	+ Numeric
6. tBodyAcc-mean()-Z
	+ Z axis timed body acceleration signal mean
	+ Numeric
7. tBodyAcc-std()-X
	+ X axis timed body acceleration signal standard deviation
	+ Numeric
8. tBodyAcc-std()-Y
	+ Y axis timed body acceleration signal standard deviation
	+ Numeric
9. tBodyAcc-std()-Z
	+ Z axis timed body acceleration signal standard deviation
	+ Numeric
10. tGravityAcc-mean()-X
	+ X axis timed gravity acceleration signal mean
	+ Numeric
11. tGravityAcc-mean()-Y
	+ Y axis timed gravity acceleration signal mean
	+ Numeric
12. tGravityAcc-mean()-Z
	+ Z axis timed gravity acceleration signal mean
	+ Numeric
13. tGravityAcc-std()-X
	+ X axis timed gravity acceleration signal standard deviation
	+ Numeric
14. tGravityAcc-std()-Y
	+ Y axis timed gravity acceleration signal standard deviation
	+ Numeric
15. tGravityAcc-std()-Z
 	+ Z axis timed gravity acceleration signal standard deviation
	+ Numeric
16. tBodyAccJerk-mean()-X
	+ X axis timed body acceleration jerk signal mean
	+ Numeric
17. tBodyAccJerk-mean()-Y
	+ Y axis timed body acceleration jerk signal mean
	+ Numeric
18. tBodyAccJerk-mean()-Z
	+ Z axis timed body acceleration jerk signal mean
	+ Numeric
19. tBodyAccJerk-std()-X
	+ X axis timed body acceleration jerk signal standard deviation
	+ Numeric
20. tBodyAccJerk-std()-Y
	+ Y axis timed body acceleration jerk signal standard deviation
	+ Numeric
21. tBodyAccJerk-std()-Z
	+ Z axis timed body acceleration jerk signal standard deviation
	+ Numeric
22. tBodyGyro-mean()-X
	+ X axis timed body gyroscope signal mean
	+ Numeric
23. tBodyGyro-mean()-Y
	+ Y axis timed body gyroscope signal mean
	+ Numeric
24. tBodyGyro-mean()-Z
	+ Z axis timed body gyroscope signal mean
	+ Numeric
25. tBodyGyro-std()-X
	+ X axis timed body gyroscope signal standard deviation
	+ Numeric
26. tBodyGyro-std()-Y
	+ Y axis timed body gyroscope signal standard deviation
	+ Numeric
27. tBodyGyro-std()-Z
	+ Z axis timed body gyroscope signal standard deviation
	+ Numeric
28. tBodyGyroJerk-mean()-X
	+ X axis timed body gyroscope jerk signal mean
	+ Numeric
29. tBodyGyroJerk-mean()-Y
	+ Y axis timed body gyroscope jerk signal mean
	+ Numeric
30. tBodyGyroJerk-mean()-Z
	+ Z axis timed body gyroscope jerk signal mean
	+ Numeric
31. tBodyGyroJerk-std()-X
	+ X axis timed body gyroscope jerk signal standard deviation
	+ Numeric
32. tBodyGyroJerk-std()-Y
	+ Y axis timed body gyroscope jerk signal standard deviation
	+ Numeric
33. tBodyGyroJerk-std()-Z
	+ Z axis timed body gyroscope jerk signal standard deviation
	+ Numeric
34. tBodyAccMag-mean()
	+ timed body acceleration magnitude mean
	+ Numeric
35. tBodyAccMag-std()
	+ timed body acceleration magnitude standard deviation
	+ Numeric
36. tGravityAccMag-mean()
	+ timed gravity acceleration magnitude mean
	+ Numeric
37. tGravityAccMag-std()
	+ timed gravity acceleration magnitude standard deviation
	+ Numeric
38. tBodyAccJerkMag-mean()
	+ timed body acceleration jerk signal magnitude mean
	+ Numeric
39. tBodyAccJerkMag-std()
	+ timed body acceleration jerk signal magnitude standard deviation
	+ Numeric
40. tBodyGyroMag-mean()
	+ timed body gyroscope signal magnitude mean
	+ Numeric
41. tBodyGyroMag-std()
	+ timed body gyroscope signal magnitude standard deviation
	+ Numeric
42. tBodyGyroJerkMag-mean()
	+ timed body gyroscope jerk signal magnitude mean
	+ Numeric
43. tBodyGyroJerkMag-std()
	+ timed body gyroscope jerk signal magnitude standard deviation
	+ Numeric
44. fBodyAcc-mean()-X
	+ X axis Fast Fourier Transform body acceleration signal mean
	+ Numeric
45. fBodyAcc-mean()-Y
	+ Y axis Fast Fourier Transform body acceleration signal mean
	+ Numeric
46. fBodyAcc-mean()-Z
	+ Z axis Fast Fourier Transform body acceleration signal mean
	+ Numeric
47. fBodyAcc-std()-X
	+ X axis Fast Fourier Transform body acceleration signal standard deviation
	+ Numeric
48. fBodyAcc-std()-Y
	+ Y axis Fast Fourier Transform body acceleration signal standard deviation
	+ Numeric
49. fBodyAcc-std()-Z
	+ Z axis Fast Fourier Transform body acceleration signal standard deviation
	+ Numeric
50. fBodyAcc-meanFreq()-X
	+ X axis Fast Fourier Transform body acceleration signal mean frequency
	+ Numeric
51. fBodyAcc-meanFreq()-Y
	+ Y axis Fast Fourier Transform body acceleration signal mean frequency
	+ Numeric
52. fBodyAcc-meanFreq()-Z
	+ Z axis Fast Fourier Transform body acceleration signal mean frequency
	+ Numeric
53. fBodyAccJerk-mean()-X
	+ X axis Fast Fourier Transform body acceleration jerk signal mean
	+ Numeric
54. fBodyAccJerk-mean()-Y
	+ Y axis Fast Fourier Transform body acceleration jerk signal mean
	+ Numeric
55. fBodyAccJerk-mean()-Z
	+ Z axis Fast Fourier Transform body acceleration jerk signal mean
	+ Numeric
56. fBodyAccJerk-std()-X
	+ X axis Fast Fourier Transform body acceleration jerk signal standard deviation
	+ Numeric
57. fBodyAccJerk-std()-Y
	+ Y axis Fast Fourier Transform body acceleration jerk signal standard deviation
	+ Numeric
58. fBodyAccJerk-std()-Z
	+ Z axis Fast Fourier Transform body acceleration jerk signal standard deviation
	+ Numeric
59. fBodyAccJerk-meanFreq()-X
	+ X axis Fast Fourier Transform body acceleration jerk signal mean frequecy
	+ Numeric
60. fBodyAccJerk-meanFreq()-Y
	+ Y axis Fast Fourier Transform body acceleration jerk signal mean frequency
	+ Numeric
61. fBodyAccJerk-meanFreq()-Z
	+ Z axis Fast Fourier Transform body acceleration jerk signal mean frequency
	+ Numeric
62. fBodyGyro-mean()-X
	+ X axis Fast Fourier Transform body gyroscope signal mean
	+ Numeric
63. fBodyGyro-mean()-Y
	+ Y axis Fast Fourier Transform body gyroscope signal mean
	+ Numeric
64. fBodyGyro-mean()-Z
	+ Z axis Fast Fourier Transform body gyroscope signal mean
	+ Numeric
65. fBodyGyro-std()-X
	+ X axis Fast Fourier Transform body gyroscope signal standard deviation
	+ Numeric
66. fBodyGyro-std()-Y
	+ Y axis Fast Fourier Transform body gyroscope signal standard deviation
	+ Numeric
67. fBodyGyro-std()-Z
	+ Z axis Fast Fourier Transform body gyroscope signal standard deviation
	+ Numeric
68. fBodyGyro-meanFreq()-X
	+ X axis Fast Fourier Transform body gyroscope signal mean frequency
	+ Numeric
69. fBodyGyro-meanFreq()-Y
	+ Y axis Fast Fourier Transform body gyroscope signal mean frequency
	+ Numeric
70. fBodyGyro-meanFreq()-Z
	+ Z axis Fast Fourier Transform body gyroscope signal mean frequency
	+ Numeric
71. fBodyAccMag-mean()
	+ Fast Fourier Transform body acceleration signal magnitude mean
	+ Numeric
72. fBodyAccMag-std()
	+ Fast Fourier Transform body acceleration signal magnitude standard deviation
	+ Numeric
73. fBodyAccMag-meanFreq()
	+ Fast Fourier Transform body acceleration signal magnitude mean frequency
	+ Numeric
74. fBodyBodyAccJerkMag-mean()
	+ Fast Fourier Transform body acceleration jerk signal magnitude mean
	+ Numeric
75. fBodyBodyAccJerkMag-std()
	+ Fast Fourier Transform body acceleration jerk signal magnitude standard deviation
	+ Numeric
76. fBodyBodyAccJerkMag-meanFreq()
	+ Fast Fourier Transform body acceleration jerk signal magnitude mean frequency
	+ Numeric
77. fBodyBodyGyroMag-mean()
	+ Fast Fourier Transform body gyroscope signal magnitude mean
	+ Numeric
78. fBodyBodyGyroMag-std()
	+ Fast Fourier Transform body gyroscope signal magnitude standard deviation
	+ Numeric
79. fBodyBodyGyroMag-meanFreq()
	+ Fast Fourier Transform body gyroscope signal magnitude mean frequency
	+ Numeric
80. fBodyBodyGyroJerkMag-mean()
	+ Fast Fourier Transform body gyroscope jerk signa magnitude mean
	+ Numeric
81. fBodyBodyGyroJerkMag-std()
	+ Fast Fourier Transform body gyroscope jerk signal magnitude standard deviation
	+ Numeric
82. fBodyBodyGyroJerkMag-meanFreq()
	+ Fast Fourier Transform body gyroscope jerk signal magnitude mean frequency
	+ Numeric
83. activityType
	+ Actity Type
	+ Numeric
	+ Range: 1 - 6

# Data Sources
1. The data for this project was obtained from [Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)