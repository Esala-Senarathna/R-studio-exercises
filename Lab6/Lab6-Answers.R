setwd("C:\\Users\\Esala\\Desktop\\SLIIT\\P&S\\PS labs\\R-studio-exercises\\Lab6")

#Q1 - dentify the variables and import the given data set into R

data<-read.table("Forest.txt",header=TRUE,sep=",")
fix(data)

attach(data)

#Q2 - Get the summary of the data set

str(data)





