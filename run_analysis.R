########################################################
# Step 0: Preprocess work - Read data from all files in
#         R Global Environment as Data Frame. This step
#         expects that user has already downloaded and 
#         uncompressed UCI HAR Dataset into a local 
#         folder and set the working directory into that
#         directory using setwd(path) command.
########################################################

x_train <- read.table("train/X_train.txt");
x_test  <- read.table("test/X_test.txt");

y_train <- read.table("train/y_train.txt");
y_test  <- read.table("test/y_test.txt");

sub_train <- read.table("train/subject_train.txt");
sub_test  <- read.table("test/subject_test.txt");

features <- read.table("features.txt");
act_labels <- read.table("activity_labels.txt");

########################################################
# Step 1: Merge or Union 'x', 'y', and 'subject' data
#         set from train and test files. Make sure to 
#         maintain the order in this merge process, i.e.  
#         'training' rows and then 'test' rows in all 3 
#         types of data.
########################################################
x_combined   <- rbind(x_train, x_test);
y_combined   <- rbind(y_train, y_test);
sub_combined <- rbind(sub_train, sub_test);



########################################################
# Step 2: Filters only mean - i.e. mean() - and standard
#         deviation - i.e. std() - from features.txt 
#         file. This givea a total of 66 distint columns 
#         which are then used to subset x data set. 
########################################################
feat_names <- features[,2]; 
mean_vec <- grep("-(mean)\\(\\)", feat_names);
# Returns int vector of 33 mean values column positions

std_vec  <- grep("-(std)\\(\\)", feat_names);
# Returns int vector of 33 standard deviation names containing mean calculations

mean_std_vec <- c(mean_vec,std_vec);
mean_std_vec <- sort(mean_std_vec);
# Conctenate mean and standard deviation vector then sort the result to match column positions in x data set

x_final_columns <- x_combined[, mean_std_vec];
# This produces a data frame of 66 columns that have either mean or standard deviation values from both train and test x data set



########################################################
# Step 3: Using descriptive activity names from activity 
#         labels files and susbstitute in y data set.
########################################################

for(i in c(1:6)) 
y_combined[,1] <- gsub(act_labels[i,1], act_labels[i,2], y_combined[,1]);
# Substituting y_combined column values with descriptions from activity labels



########################################################
# Step 4: Appropriately label data sets with descriptive 
#         varialbe names
########################################################

final_features <- features[mean_std_vec, 2]
# A factor containing only final values of features i.e. mean and standard deviation

final_features <- gsub("std\\(\\)", "standard deviation", final_features);
final_features <- gsub("mean\\(\\)", "mean", final_features);
# Substituting with more descriptive names

names(x_final_columns) <- final_features;
# Sets the names of columns from final_features factor 

names(y_combined) <- "activity descriptions"
# Sets 'activity descriptions' as column name for different activity types

names(sub_combined) <- "participant id"


########################################################
# Step 5: Create independent tidy data set with average 
#         of each variable for each activity and each
#         subject
########################################################
all_columns_with_descriptions <- cbind(sub_combined, y_combined, x_final_columns);
# Combine all data into a single data frame.

tidy_result_set <- aggregate(all_columns_with_descriptions[c(3:68)], by=all_columns_with_descriptions[c(1:2)], FUN=mean);
# Creating Tidy data set with mean of each numerical variables

write.table(tidy_result_set, "tidy_result_set.txt", row.name=FALSE);
# Creating an output file for loading


