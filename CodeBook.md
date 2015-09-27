A total of 30 subjects particpated in this study. Each subject was assigned a numeric value ranging from 1 to 30.
Each participant perfromed 6 different types of activities. All 30 subjects performed all 6 activities. 

The tidy data set captures the average of 33 different mean and 33 different standard deviation values for 
each of the 30 subjects performing each of the 6 activites. 

There are a total of 66 numeric variables (33 mean and 33 standard deviation) 
and a total of 180 observations (30 participants times 6 activities). 

In addition to 66 numeric variables, there are two additional variables on which this data is summarized / grouped:

01	"participant id"			A numeric value assigned to a participant / subject in this study - ranging from 1 to 30.
02	"activity descriptions"		Name of activity performed by a subject.
								(1) Walking
								(2) Walking Upstairs
								(3) Walking Downstairs
								(4) Sitting
								(5) Standing
								(6) Laying
								
The remaining 66 numeric variables describe either 'mean' (33 values) or 'standard deviation' (33 values). 
They also have a prefix of eiter 't' (indicating time domain signals, captured at a constant rate of 50 Hz) 
or a prefix of 'f' (indicating frequency domain signals), as explained below:					
					
Body acceleration mean and standard deviation along 3-axial signals in the X, Y and Z directions:

03	"tBodyAcc-mean-X"			
04	"tBodyAcc-mean-Y" 			
05	"tBodyAcc-mean-Z"		
06	"tBodyAcc-standard deviation-X" 
07	"tBodyAcc-standard deviation-Y" 
08	"tBodyAcc-standard deviation-Z" 

Gravity acceleration mean and standard deviation along 3-axial signals in the X, Y and Z directions:

09	"tGravityAcc-mean-X" 
10	"tGravityAcc-mean-Y" 
11	"tGravityAcc-mean-Z" 
12	"tGravityAcc-standard deviation-X" 
13	"tGravityAcc-standard deviation-Y" 
14	"tGravityAcc-standard deviation-Z" 

Body acceleration jerk mean and standard deviation along 3-axial signals in the X, Y and Z directions:

15	"tBodyAccJerk-mean-X" 
16	"tBodyAccJerk-mean-Y" 
17	"tBodyAccJerk-mean-Z" 
18 	"tBodyAccJerk-standard deviation-X" 
19	"tBodyAccJerk-standard deviation-Y" 
20	"tBodyAccJerk-standard deviation-Z" 

Body gyroscope mean and standard deviation along 3-axial signals in the X, Y and Z directions:

21	"tBodyGyro-mean-X" 
22	"tBodyGyro-mean-Y" 
23	"tBodyGyro-mean-Z" 
24	"tBodyGyro-standard deviation-X" 
25	"tBodyGyro-standard deviation-Y" 
26	"tBodyGyro-standard deviation-Z" 

Body gyroscope jerk mean and standard deviation along 3-axial signals in the X, Y and Z directions:

27	"tBodyGyroJerk-mean-X" 
28	"tBodyGyroJerk-mean-Y" 
29	"tBodyGyroJerk-mean-Z" 
30	"tBodyGyroJerk-standard deviation-X" 
31	"tBodyGyroJerk-standard deviation-Y" 
32	"tBodyGyroJerk-standard deviation-Z" 

Body acceleration magnitude mean and standard deviation:

33	"tBodyAccMag-mean"
34	"tBodyAccMag-standard deviation" 

Gravity acceleration magnitude mean and standard deviation:
35	"tGravityAccMag-mean" 
36	"tGravityAccMag-standard deviation" 

Body acceleration jerk magnitude mean and standard deviation:

37	"tBodyAccJerkMag-mean" 
38	"tBodyAccJerkMag-standard deviation" 

Body gyroscope magnitude mean and standard deviation:
39	"tBodyGyroMag-mean" 
40	"tBodyGyroMag-standard deviation" 

Body gyroscope jerk magnitude mean and standard deviation:

41	"tBodyGyroJerkMag-mean" 
42	"tBodyGyroJerkMag-standard deviation" 

Body acceleration mean and standard deviation along 3-axial signals in the X, Y and Z directions (frequency domain signals):
	
43	"fBodyAcc-mean-X" 
44	"fBodyAcc-mean-Y" 
45	"fBodyAcc-mean-Z" 
46	"fBodyAcc-standard deviation-X" 
47	"fBodyAcc-standard deviation-Y" 
48	"fBodyAcc-standard deviation-Z" 

Body acceleration jerk mean and standard deviation along 3-axial signals in the X, Y and Z directions (frequency domain signals):

49	"fBodyAccJerk-mean-X" 
50	"fBodyAccJerk-mean-Y" 
51	"fBodyAccJerk-mean-Z" 
52	"fBodyAccJerk-standard deviation-X" 
53	"fBodyAccJerk-standard deviation-Y" 
54	"fBodyAccJerk-standard deviation-Z" 

Body gyroscope mean and standard deviation along 3-axial signals in the X, Y and Z directions (frequency domain signals):

55	"fBodyGyro-mean-X" 
56	"fBodyGyro-mean-Y" 
57	"fBodyGyro-mean-Z" 
58	"fBodyGyro-standard deviation-X" 
59	"fBodyGyro-standard deviation-Y" 
60	"fBodyGyro-standard deviation-Z" 

Body acceleration magnitude mean and standard deviation (frequency domain signals):

61	"fBodyAccMag-mean" 
62	"fBodyAccMag-standard deviation" 

Body acceleration jerk magnitude mean and standard deviation (frequency domain signals):

63	"fBodyBodyAccJerkMag-mean" 
64	"fBodyBodyAccJerkMag-standard deviation" 

Body gyroscope magnitude mean and standard deviation (frequency domain signals):

65	"fBodyBodyGyroMag-mean" 
66	"fBodyBodyGyroMag-standard deviation" 

Body gyroscope jerk magnitude mean and standard deviation (frequency domain signals):

67	"fBodyBodyGyroJerkMag-mean" 
68	"fBodyBodyGyroJerkMag-standard deviation"