### Introduction

Human Activity Recognition Using Smartphones Dataset
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 
Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 
The experiments have been video-recorded to label the data manually. 
The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

### Get data and read data.

1. Download the data from this link.
   https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

2. Unzip this file into working directory and read these files into R with these codes.
   
   activitylabel<-read.table("activity_labels.txt") 
   #####"activity_labels.txt": Links the class labels with their activity names. E.g.WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING 
   
   features<-read.table("features.txt")
   #####"features.txt": List of all features.Total 561 variables. We will only extracts the measurements on the mean and standard deviation for each measurement.E.g.tBodyAcc-mean()-X,tBodyAcc-mean()-Y,tBodyAcc-mean()-Z,tBodyAcc-std()-X,tBodyAcc-std()-Y,tBodyAcc-std()-Z, etc.. 
   
   ytest<-read.table("./test/y_test.txt")
   Xtest<-read.table("./test/X_test.txt")
   #####"y_test.txt": Test labels with number 1-6. Match activity names.E.g.WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING  
   #####"X_test.txt": Test set. With 2947 observations.
   
   subjecttest<-read.table("./test/subject_test.txt")
   #####"subject_test.txt" 2947 obversations with numbers in 1-30. This is the label for volunteer. Connect volunteer number to test set data.   
   
   ytrain<-read.table("./train/y_train.txt")
   Xtrain<-read.table("./train/X_train.txt")
   #####"y_train.txt": Train labels with number 1-6. Match activity names.E.g.WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING  
   #####"X_train.txt": Train set. With 7352 observations.
   
   subjecttrain<-read.table("./train/subject_train.txt")
   #####"subject_train.txt"  7352 obversations with numbers in 1-30. This is the label for volunteer. Connect volunteer number to train set data.  

### Merges the training and the test sets to create one data set
   
   X<-rbind(Xtest,Xtrain)                   
   #####combine X_test and X_train 
   label<-rbind(ytest,ytrain)               
   #####combine y_test and y_train 
   subject<-rbind(subjecttest,subjecttrain) 
   #####combine subject_test and subject_train 

### Extracts only the measurements on the mean and standard deviation for each measurement.

   colnameX<-features[,2]                           
   #####get column names for data X ( Xtrain and Xtest ) from features 
   colnames(X)<-colnameX                            
   #####change X's column names    
   a<-grep("(mean\\(\\)|std\\(\\))",colnameX)       
   #####find X's colname include mean() and std()  
   data<-X[,a]                                      
   #####extracts the data  

### Appropriately labels the data set with descriptive variable names.
   
   colnamedata<-colnames(data)           
   #####get data's colnames 
   colnamedata<-gsub("-","",colnamedata) 
   #####remove - in colnameX 
   colnamedata<-gsub("\\(\\)","",colnamedata)  
   #####remove () in colnamedata
   colnames(data)<-colnamedata          
   #####put back the new name 
   

### Uses descriptive activity names to name the activities in the data set.

   colnamey<-"label"                      
   #####give the colname "label" to y ( ytrain and ytest) 
   colnames(label)<-colnamey              
   #####give the colname "label" to y ( ytrain and ytest) 
   colnamesubject<-"subject"              
   #####give the colname "subject" to subject ( subjecttrain and subjecttest) 
   colnames(subject)<-colnamesubject      
   #####give the colname "subject" to subject ( subjecttrain and subjecttest)    
   data<-cbind(label,data)                
   #####combine "label", "subject" and data together
   data<-cbind(subject,data)              
   #####combine "label", "subject" and data together 
   data<-merge(activitylabel,data,by.x = "V1",by.y = "label",all = TRUE)  
   #####merge activitylabel with label in data 
   library("dplyr")                       
   #####load dplyr package  
   data<-rename(data,label=V1,Activity=V2)
   #####rename colnames with "label" and "activity"  

### Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

1. Divide the data to 6 parts by labels.
2. Remove the character variable (Activity). This is to make the calculate for average for each column easier.    
3. Split each part with subject.
4. Use sapply to calculate the average(mean)
5. Change list to data frame. 
6. Export the data to "datanewtotal.txt". Code as follow:

   data1<-filter(data,label==1)
   data1<-select(data1,-(Activity))
   datasplit<-split(data1,data1$subject)
   datanew<-sapply(datasplit,function(newdata) newdata[mean(1:51),]) 
   datanew1<-as.data.frame(t(datanew))

   data2<-filter(data,label==2)
   data2<-select(data2,-(Activity))
   datasplit<-split(data2,data2$subject)
   datanew<-sapply(datasplit,function(newdata) newdata[mean(1:51),]) 
   datanew2<-as.data.frame(t(datanew))

   data3<-filter(data,label==3)
   data3<-select(data3,-(Activity))
   datasplit<-split(data3,data3$subject)
   datanew<-sapply(datasplit,function(newdata) newdata[mean(1:51),]) 
   datanew3<-as.data.frame(t(datanew))

   data4<-filter(data,label==4)
   data4<-select(data4,-(Activity))
   datasplit<-split(data4,data4$subject)
   datanew<-sapply(datasplit,function(newdata) newdata[mean(1:51),]) 
   datanew4<-as.data.frame(t(datanew))

   data5<-filter(data,label==5)
   data5<-select(data5,-(Activity))
   datasplit<-split(data5,data5$subject)
   datanew<-sapply(datasplit,function(newdata) newdata[mean(1:51),]) 
   datanew5<-as.data.frame(t(datanew))

   data6<-filter(data,label==6)
   data6<-select(data6,-(Activity))
   datasplit<-split(data6,data6$subject)
   datanew<-sapply(datasplit,function(newdata) newdata[mean(1:51),]) 
   datanew6<-as.data.frame(t(datanew))

   datanewtotal<-rbind(datanew1,datanew2,datanew3,datanew4,datanew5,datanew6)              
   #####combine 6 parts together 
   datanewtotal<-merge(activitylabel,datanewtotal,by.x = "V1",by.y = "label",all = TRUE)   
   #####merge the new data with actititylabel 
   datanewtotal<-rename(datanewtotal,label=V1,Activity=V2)                                 
   #####rename colnames with "label" and "activity"  
   out <- data.frame(lapply(datanewtotal, function(x) factor(unlist(x))))                  
   #####unlist the data so that we can use write.table to export the data  
   write.table(out,file = "datanewtotal.txt",row.names = FALSE)                            
   #####export the data 


