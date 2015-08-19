##read data into R##
activitylabel<-read.table("activity_labels.txt")
features<-read.table("features.txt")
ytest<-read.table("./test/y_test.txt")
Xtest<-read.table("./test/X_test.txt")
subjecttest<-read.table("./test/subject_test.txt")
ytrain<-read.table("./train/y_train.txt")
Xtrain<-read.table("./train/X_train.txt")
subjecttrain<-read.table("./train/subject_train.txt")

##Merges the training and the test sets to create one data set##
X<-rbind(Xtest,Xtrain)
label<-rbind(ytest,ytrain)
subject<-rbind(subjecttest,subjecttrain)

##Extracts only the measurements on the mean and standard deviation for each## 
##measurement##
colnameX<-features[,2]
colnames(X)<-colnameX
a<-grep("(mean\\(\\)|std\\(\\))",colnameX)
data<-X[,a]

##Appropriately labels the data set with descriptive variable names##
colnamedata<-colnames(data)
colnamedata<-gsub("-","",colnamedata) ##remove - in colnamedata##
colnamedata<-gsub("\\(\\)","",colnamedata)  ##remove () in colnamedata##
colnames(data)<-colnamedata

##Uses descriptive activity names to name the activities in the data set##
colnamey<-"label"
colnames(label)<-colnamey
colnamesubject<-"subject"
colnames(subject)<-colnamesubject
data<-cbind(label,data)
data<-cbind(subject,data)
data<-merge(activitylabel,data,by.x = "V1",by.y = "label",all = TRUE)
library("dplyr")
data<-rename(data,label=V1,Activity=V2)

##From the data set in step 4, creates a second, independent tidy data set with## 
##the average of each variable for each activity and each subject##
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
datanewtotal<-merge(activitylabel,datanewtotal,by.x = "V1",by.y = "label",all = TRUE)
datanewtotal<-rename(datanewtotal,label=V1,Activity=V2)
out <- data.frame(lapply(datanewtotal, function(x) factor(unlist(x))))
write.table(out,file = "datanewtotal.txt",row.names = FALSE)

