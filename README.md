This submission is for Coursera's Getting and Cleaning Data course. It produces
"tidy_result_set.txt" file that contains average tidy data for each 
of the 30 subjects for 6 each of different types of activities (total of 180 rows).


Pre-requisite: Download UCI HAR Dataset into your local folder. Set working directory in R
to this folder by using setwd("path") command.

The script performs 5 different tasks as described below:

Task 1: Reads data from all files in R Global Environment then merges data from 'train' and 'test' files into single data frames.

Task 2: Filters mean and standard deviation from all available features. This produces a total of 66 distint values.

Task 3: Substitutes activity labels to 'y' data set.

Task 4: Labels data sets with descriptive variable names as defined in CodeBook.md

Task 5: Combines data sets into a single data frame and creates tidy result set by applying mean function on all numerical variables.



