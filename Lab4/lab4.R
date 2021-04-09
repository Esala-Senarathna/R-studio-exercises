setwd("C:\\Users\\Esala\\Desktop\\SLIIT\\P&S\\PS labs\\R-studio-exercises\\Lab4")

Attendance<-scan()

Salary<-scan()

Years<-scan()

data<-data.frame(Attendance, Salary, Years)

#shows the data
data

boxplot(Attendance, main="Boxplot of attendance", ylab="attendance")
boxplot(Salary, main="Boxplot of salary", ylab="salary")
boxplot(Years, outpch=8, main="Boxplot of Years", ylab="years")
hist(Attendance, main="Histogram of attendance")
hist(Salary, main="Histogram of Salary")

#stem leaf
stem(Attendance)

summary(data)
sapply(data,sd)
sapply(data,IQR)

#3

get.mode<-function(x){
	counts<-table(x)
	names(counts[counts==max(counts)])
}

get.mode(Years)

#4
find.outliers<-function(x){
	q1<-quantile(x)[2]
	q3<-quantile(x)[4]
	iqr<-q3-q1

	ub<-q3+1.5*iqr
	lb<-q1-1.5*iqr

	print(paste("Upper bound: ", ub))
	print(paste("Lower bound: ",lb))

	print(paste("Outliers: ",paste(sort(x[x<lb|x>ub]),collapse=",")))
}

find.outliers(Years)
