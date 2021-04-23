setwd("C:\\Users\\Esala\\Desktop\\SLIIT\\P&S\\PS labs\\R-studio-exercises\\Lab5")

data<-read.table("Data File.txt", header = TRUE,sep = ",")
fix(data)

names(data)<-c("x1","x2")

#attaching the data
attach(data)

#Q1
hist(x2, main="Histogram of No. of shareholders", xlab="No of shareholders")


#Q1



