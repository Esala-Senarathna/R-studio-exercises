setwd("C:\\Users\\Hithaisha\\Desktop\\PS lab\\Lab3")

#import the file
data<-read.csv("Data 3.csv")
fix(data)

names(data)<-c("Age","Gender","Accomodation")

data$Gender<-factor(data$Gender, c(1,2),c("Male", "Female"))

data$Accomodation<-factor(data$Accomodation, c(1,2,3), c("Home","Boarded","Lodging"))


attach(data)
attach(data)

##2
#frequenct table
gender.freq<-table(Gender)
gender.freq

acc.freq<-table(Accomodation)
acc.freq

#pie chart
pie(gender.freq,main="Pie chart for gender")

pie(acc.freq, main="Pie chart for Accomodation")


barplot(gender.freq,main="Barchart for gender", ylab = "Frequency")
abline(h=0)

barplot(acc.freq,main="Barchart for Accomodation", ylab = "Frequency")
abline(h=0)


gender_acc.freq<-table(Gender,Accomodation)
gender_acc.freq


barplot(gender_acc.freq, main="Gender and Accomodation", legend=rownames(gender_acc.freq))

barplot(gender_acc.freq, beside=TRUE, main="Gender and Accomodation", legend=rownames(gender_acc.freq))

##4


boxplot(Age~Gender, main="Boxplot for age by Gender", xlab = "Gender", ylab ="Age")

boxplot(Age~Accomodation, outpch=8,main="Boxplot for age by Accomodation", xlab = "Accomodation", ylab ="Age")

##5

xtabs(Age~Gender+Accomodation)/gender_acc.freq


