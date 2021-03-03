#Dealing with missing values/Null values
#1 Test missing vvalues ,2 Recde/impute mising values, 3 Exclude missing values
#Test for missing
x<-c(1:5,NA,6:7,NA)
x
is.na(x)
DF<-data.frame(col1=c(2:4,NA),col2=c("inam",NA,"Text",NA),col3=c(TRUE,FALSE,FALSE,TRUE),
               stringsAsFactors =FALSE )
DF
is.na(DF)
is.na(DF$col1)
#Identify location of NAs
which(is.na(DF))
#identify count of NAs
sum(is.na(DF))
colSums(is.na(DF))
#impute missing values
y<-c(1:4,NA,5:6,NA)
y
y[is.na(y)]<-mean(x,na.rm =TRUE)
y
df2<-data.frame(col1=c(1:3,41),col2=c(5,7,9,41))
df2
df2[df2==41]<-NA #it change 41 into NA
df2
DF<-data.frame(col1=c(2:4,NA),col2=c("inam",NA,"Text",NA),col3=c(TRUE,FALSE,FALSE,TRUE),
               stringsAsFactors =FALSE )
DF$col2[is.na(DF$col2)]<-mean(DF$col1,na.rm = TRUE)
DF
#Just remove the NA
w<-c(4:7,NA,11.2,NA)
w
mean(w,na.rm = TRUE)
#To find complete cases ,returns logical operation
!complete.cases(w)# incomplete cases 
na.omit(w)
 
