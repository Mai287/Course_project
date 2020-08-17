---
title: "Codebook"
author: "Mai"
date: "17/08/2020"
output: md_document
---
## Data Source
Data source: Human Activity Recognition Using Smartphones Data Set
Available at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
The sourced dataset is collected by capture the sensor signals (accelerometer and gyroscope) from a sample of 30 people who perform six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag


## The dataset
### 1. HAR_Datset.csv
 This data has 10299 observation of 81 variables. It is extracted from the raw data including only mean and standard deviation of each measurement.
 Variables
 
subject : Indicate the subject( each person is assigned a number): Factor w/ 30 levels 
activity: Indicate the activity types: Factor w/ 6 levels 

summary(data)
    subject                   activity    tbodyacc.mean.x   tbodyacc.mean.y    tbodyacc.mean.z   
 25     : 409   WALKING           :1722   Min.   :-1.0000   Min.   :-1.00000   Min.   :-1.00000  
 21     : 408   WALKING_UPSTAIRS  :1544   1st Qu.: 0.2626   1st Qu.:-0.02490   1st Qu.:-0.12102  
 26     : 392   WALKING_DOWNSTAIRS:1406   Median : 0.2772   Median :-0.01716   Median :-0.10860  
 30     : 383   SITTING           :1777   Mean   : 0.2743   Mean   :-0.01774   Mean   :-0.10892  
 28     : 382   STANDING          :1906   3rd Qu.: 0.2884   3rd Qu.:-0.01062   3rd Qu.:-0.09759  
 24     : 381   LAYING            :1944   Max.   : 1.0000   Max.   : 1.00000   Max.   : 1.00000  
 (Other):7944                                                                                    
 tbodyacc.std.x    tbodyacc.std.y     tbodyacc.std.z    tgravityacc.mean.x tgravityacc.mean.y 
 Min.   :-1.0000   Min.   :-1.00000   Min.   :-1.0000   Min.   :-1.0000    Min.   :-1.000000  
 1st Qu.:-0.9924   1st Qu.:-0.97699   1st Qu.:-0.9791   1st Qu.: 0.8117    1st Qu.:-0.242943  
 Median :-0.9430   Median :-0.83503   Median :-0.8508   Median : 0.9218    Median :-0.143551  
 Mean   :-0.6078   Mean   :-0.51019   Mean   :-0.6131   Mean   : 0.6692    Mean   : 0.004039  
 3rd Qu.:-0.2503   3rd Qu.:-0.05734   3rd Qu.:-0.2787   3rd Qu.: 0.9547    3rd Qu.: 0.118905  
 Max.   : 1.0000   Max.   : 1.00000   Max.   : 1.0000   Max.   : 1.0000    Max.   : 1.000000  
                                                                                              
 tgravityacc.mean.z tgravityacc.std.x tgravityacc.std.y tgravityacc.std.z tbodyaccjerk.mean.x
 Min.   :-1.00000   Min.   :-1.0000   Min.   :-1.0000   Min.   :-1.0000   Min.   :-1.00000   
 1st Qu.:-0.11671   1st Qu.:-0.9949   1st Qu.:-0.9913   1st Qu.:-0.9866   1st Qu.: 0.06298   
 Median : 0.03680   Median :-0.9819   Median :-0.9759   Median :-0.9665   Median : 0.07597   
 Mean   : 0.09215   Mean   :-0.9652   Mean   :-0.9544   Mean   :-0.9389   Mean   : 0.07894   
 3rd Qu.: 0.21621   3rd Qu.:-0.9615   3rd Qu.:-0.9464   3rd Qu.:-0.9296   3rd Qu.: 0.09131   
 Max.   : 1.00000   Max.   : 1.0000   Max.   : 1.0000   Max.   : 1.0000   Max.   : 1.00000   
                                                                                             
 tbodyaccjerk.mean.y tbodyaccjerk.mean.z tbodyaccjerk.std.x tbodyaccjerk.std.y tbodyaccjerk.std.z
 Min.   :-1.000000   Min.   :-1.000000   Min.   :-1.0000    Min.   :-1.0000    Min.   :-1.0000   
 1st Qu.:-0.018555   1st Qu.:-0.031552   1st Qu.:-0.9913    1st Qu.:-0.9850    1st Qu.:-0.9892   
 Median : 0.010753   Median :-0.001159   Median :-0.9513    Median :-0.9250    Median :-0.9543   
 Mean   : 0.007948   Mean   :-0.004675   Mean   :-0.6398    Mean   :-0.6080    Mean   :-0.7628   
 3rd Qu.: 0.033538   3rd Qu.: 0.024578   3rd Qu.:-0.2912    3rd Qu.:-0.2218    3rd Qu.:-0.5485   
 Max.   : 1.000000   Max.   : 1.000000   Max.   : 1.0000    Max.   : 1.0000    Max.   : 1.0000   
                                                                                                 
 tbodygyro.mean.x   tbodygyro.mean.y   tbodygyro.mean.z   tbodygyro.std.x   tbodygyro.std.y  
 Min.   :-1.00000   Min.   :-1.00000   Min.   :-1.00000   Min.   :-1.0000   Min.   :-1.0000  
 1st Qu.:-0.04579   1st Qu.:-0.10399   1st Qu.: 0.06485   1st Qu.:-0.9872   1st Qu.:-0.9819  
 Median :-0.02776   Median :-0.07477   Median : 0.08626   Median :-0.9016   Median :-0.9106  
 Mean   :-0.03098   Mean   :-0.07472   Mean   : 0.08836   Mean   :-0.7212   Mean   :-0.6827  
 3rd Qu.:-0.01058   3rd Qu.:-0.05110   3rd Qu.: 0.11044   3rd Qu.:-0.4822   3rd Qu.:-0.4461  
 Max.   : 1.00000   Max.   : 1.00000   Max.   : 1.00000   Max.   : 1.0000   Max.   : 1.0000  
                                                                                             
 tbodygyro.std.z   tbodygyrojerk.mean.x tbodygyrojerk.mean.y tbodygyrojerk.mean.z tbodygyrojerk.std.x
 Min.   :-1.0000   Min.   :-1.00000     Min.   :-1.00000     Min.   :-1.00000     Min.   :-1.0000    
 1st Qu.:-0.9850   1st Qu.:-0.11723     1st Qu.:-0.05868     1st Qu.:-0.07936     1st Qu.:-0.9907    
 Median :-0.8819   Median :-0.09824     Median :-0.04056     Median :-0.05455     Median :-0.9348    
 Mean   :-0.6537   Mean   :-0.09671     Mean   :-0.04232     Mean   :-0.05483     Mean   :-0.7313    
 3rd Qu.:-0.3379   3rd Qu.:-0.07930     3rd Qu.:-0.02521     3rd Qu.:-0.03168     3rd Qu.:-0.4865    
 Max.   : 1.0000   Max.   : 1.00000     Max.   : 1.00000     Max.   : 1.00000     Max.   : 1.0000    
                                                                                                     
 tbodygyrojerk.std.y tbodygyrojerk.std.z tbodyaccmag.mean  tbodyaccmag.std   tgravityaccmag.mean
 Min.   :-1.0000     Min.   :-1.0000     Min.   :-1.0000   Min.   :-1.0000   Min.   :-1.0000    
 1st Qu.:-0.9922     1st Qu.:-0.9926     1st Qu.:-0.9819   1st Qu.:-0.9822   1st Qu.:-0.9819    
 Median :-0.9548     Median :-0.9503     Median :-0.8746   Median :-0.8437   Median :-0.8746    
 Mean   :-0.7861     Mean   :-0.7399     Mean   :-0.5482   Mean   :-0.5912   Mean   :-0.5482    
 3rd Qu.:-0.6268     3rd Qu.:-0.5097     3rd Qu.:-0.1201   3rd Qu.:-0.2423   3rd Qu.:-0.1201    
 Max.   : 1.0000     Max.   : 1.0000     Max.   : 1.0000   Max.   : 1.0000   Max.   : 1.0000    
                                                                                                
 tgravityaccmag.std tbodyaccjerkmag.mean tbodyaccjerkmag.std tbodygyromag.mean tbodygyromag.std 
 Min.   :-1.0000    Min.   :-1.0000      Min.   :-1.0000     Min.   :-1.0000   Min.   :-1.0000  
 1st Qu.:-0.9822    1st Qu.:-0.9896      1st Qu.:-0.9907     1st Qu.:-0.9781   1st Qu.:-0.9775  
 Median :-0.8437    Median :-0.9481      Median :-0.9288     Median :-0.8223   Median :-0.8259  
 Mean   :-0.5912    Mean   :-0.6494      Mean   :-0.6278     Mean   :-0.6052   Mean   :-0.6625  
 3rd Qu.:-0.2423    3rd Qu.:-0.2956      3rd Qu.:-0.2733     3rd Qu.:-0.2454   3rd Qu.:-0.3940  
 Max.   : 1.0000    Max.   : 1.0000      Max.   : 1.0000     Max.   : 1.0000   Max.   : 1.0000  
                                                                                                
 tbodygyrojerkmag.mean tbodygyrojerkmag.std fbodyacc.mean.x   fbodyacc.mean.y   fbodyacc.mean.z  
 Min.   :-1.0000       Min.   :-1.0000      Min.   :-1.0000   Min.   :-1.0000   Min.   :-1.0000  
 1st Qu.:-0.9923       1st Qu.:-0.9922      1st Qu.:-0.9913   1st Qu.:-0.9792   1st Qu.:-0.9832  
 Median :-0.9559       Median :-0.9403      Median :-0.9456   Median :-0.8643   Median :-0.8954  
 Mean   :-0.7621       Mean   :-0.7780      Mean   :-0.6228   Mean   :-0.5375   Mean   :-0.6650  
 3rd Qu.:-0.5499       3rd Qu.:-0.6093      3rd Qu.:-0.2646   3rd Qu.:-0.1032   3rd Qu.:-0.3662  
 Max.   : 1.0000       Max.   : 1.0000      Max.   : 1.0000   Max.   : 1.0000   Max.   : 1.0000  
                                                                                                 
 fbodyacc.std.x    fbodyacc.std.y     fbodyacc.std.z    fbodyacc.meanfreq.x fbodyacc.meanfreq.y
 Min.   :-1.0000   Min.   :-1.00000   Min.   :-1.0000   Min.   :-1.00000    Min.   :-1.000000  
 1st Qu.:-0.9929   1st Qu.:-0.97689   1st Qu.:-0.9780   1st Qu.:-0.41878    1st Qu.:-0.144772  
 Median :-0.9416   Median :-0.83261   Median :-0.8398   Median :-0.23825    Median : 0.004666  
 Mean   :-0.6034   Mean   :-0.52842   Mean   :-0.6179   Mean   :-0.22147    Mean   : 0.015401  
 3rd Qu.:-0.2493   3rd Qu.:-0.09216   3rd Qu.:-0.3023   3rd Qu.:-0.02043    3rd Qu.: 0.176603  
 Max.   : 1.0000   Max.   : 1.00000   Max.   : 1.0000   Max.   : 1.00000    Max.   : 1.000000  
                                                                                               
 fbodyacc.meanfreq.z fbodyaccjerk.mean.x fbodyaccjerk.mean.y fbodyaccjerk.mean.z fbodyaccjerk.std.x
 Min.   :-1.00000    Min.   :-1.0000     Min.   :-1.0000     Min.   :-1.0000     Min.   :-1.0000   
 1st Qu.:-0.13845    1st Qu.:-0.9912     1st Qu.:-0.9848     1st Qu.:-0.9873     1st Qu.:-0.9920   
 Median : 0.06084    Median :-0.9516     Median :-0.9257     Median :-0.9475     Median :-0.9562   
 Mean   : 0.04731    Mean   :-0.6567     Mean   :-0.6290     Mean   :-0.7436     Mean   :-0.6550   
 3rd Qu.: 0.24922    3rd Qu.:-0.3270     3rd Qu.:-0.2638     3rd Qu.:-0.5133     3rd Qu.:-0.3203   
 Max.   : 1.00000    Max.   : 1.0000     Max.   : 1.0000     Max.   : 1.0000     Max.   : 1.0000   
                                                                                                   
 fbodyaccjerk.std.y fbodyaccjerk.std.z fbodyaccjerk.meanfreq.x fbodyaccjerk.meanfreq.y
 Min.   :-1.0000    Min.   :-1.0000    Min.   :-1.00000        Min.   :-1.000000      
 1st Qu.:-0.9865    1st Qu.:-0.9895    1st Qu.:-0.29770        1st Qu.:-0.427951      
 Median :-0.9280    Median :-0.9590    Median :-0.04544        Median :-0.236530      
 Mean   :-0.6122    Mean   :-0.7809    Mean   :-0.04771        Mean   :-0.213393      
 3rd Qu.:-0.2361    3rd Qu.:-0.5903    3rd Qu.: 0.20447        3rd Qu.: 0.008651      
 Max.   : 1.0000    Max.   : 1.0000    Max.   : 1.00000        Max.   : 1.000000      
                                                                                      
 fbodyaccjerk.meanfreq.z fbodygyro.mean.x  fbodygyro.mean.y  fbodygyro.mean.z  fbodygyro.std.x  
 Min.   :-1.00000        Min.   :-1.0000   Min.   :-1.0000   Min.   :-1.0000   Min.   :-1.0000  
 1st Qu.:-0.33139        1st Qu.:-0.9853   1st Qu.:-0.9847   1st Qu.:-0.9851   1st Qu.:-0.9881  
 Median :-0.10246        Median :-0.8917   Median :-0.9197   Median :-0.8877   Median :-0.9053  
 Mean   :-0.12383        Mean   :-0.6721   Mean   :-0.7062   Mean   :-0.6442   Mean   :-0.7386  
 3rd Qu.: 0.09124        3rd Qu.:-0.3837   3rd Qu.:-0.4735   3rd Qu.:-0.3225   3rd Qu.:-0.5225  
 Max.   : 1.00000        Max.   : 1.0000   Max.   : 1.0000   Max.   : 1.0000   Max.   : 1.0000  
                                                                                                
 fbodygyro.std.y   fbodygyro.std.z   fbodygyro.meanfreq.x fbodygyro.meanfreq.y fbodygyro.meanfreq.z
 Min.   :-1.0000   Min.   :-1.0000   Min.   :-1.00000     Min.   :-1.00000     Min.   :-1.00000    
 1st Qu.:-0.9808   1st Qu.:-0.9862   1st Qu.:-0.27189     1st Qu.:-0.36257     1st Qu.:-0.23240    
 Median :-0.9061   Median :-0.8915   Median :-0.09868     Median :-0.17298     Median :-0.05369    
 Mean   :-0.6742   Mean   :-0.6904   Mean   :-0.10104     Mean   :-0.17428     Mean   :-0.05139    
 3rd Qu.:-0.4385   3rd Qu.:-0.4168   3rd Qu.: 0.06810     3rd Qu.: 0.01366     3rd Qu.: 0.12251    
 Max.   : 1.0000   Max.   : 1.0000   Max.   : 1.00000     Max.   : 1.00000     Max.   : 1.00000    
                                                                                                   
 fbodyaccmag.mean  fbodyaccmag.std   fbodyaccmag.meanfreq fbodybodyaccjerkmag.mean fbodybodyaccjerkmag.std
 Min.   :-1.0000   Min.   :-1.0000   Min.   :-1.00000     Min.   :-1.0000          Min.   :-1.0000        
 1st Qu.:-0.9847   1st Qu.:-0.9829   1st Qu.:-0.09663     1st Qu.:-0.9898          1st Qu.:-0.9907        
 Median :-0.8755   Median :-0.8547   Median : 0.07026     Median :-0.9290          Median :-0.9255        
 Mean   :-0.5860   Mean   :-0.6595   Mean   : 0.07688     Mean   :-0.6208          Mean   :-0.6401        
 3rd Qu.:-0.2173   3rd Qu.:-0.3823   3rd Qu.: 0.24495     3rd Qu.:-0.2600          3rd Qu.:-0.3082        
 Max.   : 1.0000   Max.   : 1.0000   Max.   : 1.00000     Max.   : 1.0000          Max.   : 1.0000        
                                                                                                          
 fbodybodyaccjerkmag.meanfreq fbodybodygyromag.mean fbodybodygyromag.std fbodybodygyromag.meanfreq
 Min.   :-1.000000            Min.   :-1.0000       Min.   :-1.0000      Min.   :-1.00000         
 1st Qu.:-0.002959            1st Qu.:-0.9825       1st Qu.:-0.9781      1st Qu.:-0.23436         
 Median : 0.164180            Median :-0.8756       Median :-0.8275      Median :-0.05210         
 Mean   : 0.173220            Mean   :-0.6974       Mean   :-0.7000      Mean   :-0.04156         
 3rd Qu.: 0.357307            3rd Qu.:-0.4514       3rd Qu.:-0.4713      3rd Qu.: 0.15158         
 Max.   : 1.000000            Max.   : 1.0000       Max.   : 1.0000      Max.   : 1.00000         
                                                                                                  
 fbodybodygyrojerkmag.mean fbodybodygyrojerkmag.std fbodybodygyrojerkmag.meanfreq
 Min.   :-1.0000           Min.   :-1.0000          Min.   :-1.00000             
 1st Qu.:-0.9921           1st Qu.:-0.9926          1st Qu.:-0.01948             
 Median :-0.9453           Median :-0.9382          Median : 0.13625             
 Mean   :-0.7798           Mean   :-0.7922          Mean   : 0.12671             
 3rd Qu.:-0.6122           3rd Qu.:-0.6437          3rd Qu.: 0.28896             
 Max.   : 1.0000           Max.   : 1.0000          Max.   : 1.00000         

### 2. mean_dataset_bysubject_byactivity.csv
This dataset illustrates the average of each variable for each activity and each subject in the above dataset (the HAR_Dataset.csv). Consequently, the variables of this dataset is the same as the variables in the HAR_Dataset.

 