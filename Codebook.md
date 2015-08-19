### Human Activity Recognition Using Smartphones Dataset Code Book

Both data and "datanewtotal.txt" are with total 69 column(variables). 
data with 10299 observations. 
"datanewtotal.txt" with 180 obversations. They are the average of each variable for each activity and each subject for data. 6 X 30 = 180. 

Variables as follow:

"label"
    -- integer 1-6. Activity label.

"Activity"
    -- Activity factor.(WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

"subject"
    -- integer 1-30. The subject who performed the activity for each window sample.

"tBodyAccmeanX"
"tBodyAccmeanY"  
"tBodyAccmeanZ"
    -- numeric. Unit in Hz. Signals with body acceleration. three-dimensional in X,Y,Z. This is its mean value.     

"tBodyAccstdX"   
"tBodyAccstdY"
"tBodyAccstdZ"
    -- numeric. Unit in Hz. Signals with body acceleration. three-dimensional in X,Y,Z. This is its standard deviation value.

"tGravityAccmeanX"         
"tGravityAccmeanY"         
"tGravityAccmeanZ"         
    -- numeric. Unit in Hz. Signals with gravity acceleration. three-dimensional in X,Y,Z. This is its mean value. 

"tGravityAccstdX"         
"tGravityAccstdY"          
"tGravityAccstdZ"          
    -- numeric. Unit in Hz. Signals with gravity acceleration. three-dimensional in X,Y,Z. This is its standard deviation value. 

"tBodyAccJerkmeanX"        
"tBodyAccJerkmeanY"        
"tBodyAccJerkmeanZ"
    -- numeric. Unit in Hz. Signals with body acceleration. The body linear acceleration and angular velocity were derived in time to obtain Jerk signals. three-dimensional in X,Y,Z. This is its mean value.        

"tBodyAccJerkstdX"         
"tBodyAccJerkstdY"         
"tBodyAccJerkstdZ"
    -- numeric. Unit in Hz. Signals with body acceleration. The body linear acceleration and angular velocity were derived in time to obtain Jerk signals. three-dimensional in X,Y,Z. This is its standard deviation value.
         
"tBodyGyromeanX"           
"tBodyGyromeanY"          
"tBodyGyromeanZ"    
    -- numeric. Unit in Hz. Signals with gyroscope. three-dimensional in X,Y,Z. This is its mean value.       

"tBodyGyrostdX"            
"tBodyGyrostdY"            
"tBodyGyrostdZ"
    -- numeric. Unit in Hz. Signals with gyroscope. three-dimensional in X,Y,Z. This is its standard deviation value.            

"tBodyGyroJerkmeanX"      
"tBodyGyroJerkmeanY"       
"tBodyGyroJerkmeanZ"
    -- numeric. Unit in Hz. Signals with gyroscope. The body linear acceleration and angular velocity were derived in time to obtain Jerk signals. three-dimensional in X,Y,Z. This is its mean value.         

"tBodyGyroJerkstdX"        
"tBodyGyroJerkstdY"        
"tBodyGyroJerkstdZ" 
    -- numeric. Unit in Hz. Signals with gyroscope. The body linear acceleration and angular velocity were derived in time to obtain Jerk signals. three-dimensional in X,Y,Z. This is its standard deviation value.      

"tBodyAccMagmean"          
"tBodyAccMagstd" 
    -- numeric. Unit in Hz. Signals with body acceleration. The magnitude of these three-dimensional signals were calculated using the Euclidean norm. This is its mean or standard deviation value.          

"tGravityAccMagmean"       
"tGravityAccMagstd" 
    -- numeric. Unit in Hz. Signals with gravity acceleration. The magnitude of these three-dimensional signals were calculated using the Euclidean norm. This is its mean or standard deviation value.       

"tBodyAccJerkMagmean"     
"tBodyAccJerkMagstd"
    -- numeric. Unit in Hz. Signals with body acceleration. The magnitude of these three-dimensional Jerk signals were calculated using the Euclidean norm. This is its mean or standard deviation value.        

"tBodyGyroMagmean"         
"tBodyGyroMagstd"
    -- numeric. Unit in Hz. Signals with gyroscope. The magnitude of these three-dimensional signals were calculated using the Euclidean norm. This is its mean or standard deviation value.           

"tBodyGyroJerkMagmean"     
"tBodyGyroJerkMagstd"
    -- numeric. Unit in Hz. Signals with gyroscope. The magnitude of these three-dimensional Jerk signals were calculated using the Euclidean norm. This is its mean or standard deviation value.     

"fBodyAccmeanX"            
"fBodyAccmeanY"            
"fBodyAccmeanZ"
    -- numeric. Unit in Hz. Signals with body acceleration. three-dimensional in X,Y,Z. Fast Fourier Transform (FFT) was applied. This is its mean value.            

"fBodyAccstdX"             
"fBodyAccstdY"            
"fBodyAccstdZ"
    -- numeric. Unit in Hz. Signals with body acceleration. three-dimensional in X,Y,Z. Fast Fourier Transform (FFT) was applied. This is its standard deviation value.             

"fBodyAccJerkmeanX"        
"fBodyAccJerkmeanY"        
"fBodyAccJerkmeanZ" 
    -- numeric. Unit in Hz. Signals with body acceleration. The body linear acceleration and angular velocity were derived in time to obtain Jerk signals. three-dimensional in X,Y,Z. Fast Fourier Transform (FFT) was applied. 
       This is its mean value.             

"fBodyAccJerkstdX"        
"fBodyAccJerkstdY"         
"fBodyAccJerkstdZ"
    -- numeric. Unit in Hz. Signals with body acceleration. The body linear acceleration and angular velocity were derived in time to obtain Jerk signals. three-dimensional in X,Y,Z. Fast Fourier Transform (FFT) was applied. 
       This is its standard deviation value.                

"fBodyGyromeanX"           
"fBodyGyromeanY"           
"fBodyGyromeanZ"
    -- numeric. Unit in Hz. Signals with gyroscope. three-dimensional in X,Y,Z. Fast Fourier Transform (FFT) was applied. This is its mean value.           

"fBodyGyrostdX"            
"fBodyGyrostdY"            
"fBodyGyrostdZ"
    -- numeric. Unit in Hz. Signals with gyroscope. three-dimensional in X,Y,Z. Fast Fourier Transform (FFT) was applied. This is its standard deviation value.               

"fBodyAccMagmean"          
"fBodyAccMagstd" 
    -- numeric. Unit in Hz. Signals with body acceleration. The magnitude of these three-dimensional signals were calculated using the Euclidean norm. Fast Fourier Transform (FFT) was applied. 
       This is its mean or standard deviation value.           

"fBodyBodyAccJerkMagmean"  
"fBodyBodyAccJerkMagstd" 
    -- numeric. Unit in Hz. Signals with body acceleration. The magnitude of these three-dimensional Jerk signals were calculated using the Euclidean norm. Fast Fourier Transform (FFT) was applied. 
       This is its mean or standard deviation value.   

"fBodyBodyGyroMagmean"     
"fBodyBodyGyroMagstd" 
    -- numeric. Unit in Hz. Signals with gyroscope. The magnitude of these three-dimensional signals were calculated using the Euclidean norm. Fast Fourier Transform (FFT) was applied. 
       This is its mean or standard deviation value.        

"fBodyBodyGyroJerkMagmean"
"fBodyBodyGyroJerkMagstd"
    -- numeric. Unit in Hz. Signals with gyroscope. The magnitude of these three-dimensional Jerk signals were calculated using the Euclidean norm. Fast Fourier Transform (FFT) was applied. 
       This is its mean or standard deviation value. 

 