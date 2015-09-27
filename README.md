This submission is Coursera's Getting and Cleaning Data course. It produces
"tidy_result_set.txt" file that contains average tidy data for each 
of the 30 subjects for 6 different types of activities (total of 180 rows).


Pre-requisite: Download UCI HAR Dataset into your local folder. Set working directory in R
to this folder by using setwd("path") command.

The script perform 5 different tasks as described below:

Task 1: Read data from all files in R Global Environment then merge data from train and test files into single data frames.

Task 2: Filter mean and standard deviation out of all available features. This produces a total of 66 distint values.

Task 3: Substitute activity labels to 'y' data set.

Task 4: Label data sets with descriptive variable names as defined in CodeBook.md

Task 5: Combine data sets into a single data frame and creates tidy result set by applying function on all numerical variables.



