getwd()
setwd("C:\\Users\\Hithaisha\\Desktop\\PS lab")

print(sample(1:3))
print(sample(1:3, size=3, replace=FALSE))
print(sample(1:3, size=3, replace=TRUE))
print(sample(1:3, size=5, replace=TRUE))

//following doesnot work as numbers cannot be repeated
print(sample(1:3, size=5, replace=FALSE))

print(sample(c(2,5,3), size=4,replace=TRUE))

print(sample(c(2,5,3), size=4,replace=FALSE))

print(sample(1:2, size=10, prob=c(1,3), replace=TRUE))

print(sample(1:2, size=10, prob=c(3,1), replace=TRUE))

sample(1:2, size=10, prob=c(0.3,0.7), replace=TRUE)


##IF Condition

x<-1:10
y<-sample(x,1)
if(y<=5){
	print("y is less than 5")
}else{
	print("y is greater than 5")
}


## ex 2
x
yy<-sample(x,1)

if(yy<10){
	z<-5
}else{
	z<-0
}
z


##
xx<-sample(-5:8,1)
if(xx<0){
	print("Negative Number")
}else if(xx>0){
	print("Positive Number")
}else{
	print("Zero")
}
xx

##for loops
for (i in 1:15){
	print(i)
}


##reading a vector
student<-c("Anne", "Steve", "Kyle", "John")

for(i in 1:4){
	print(student[i])
}

for(i in 1:3){
	print(student[i])
}


##while
j<-1
while(j<10){
	print(j)
	j<-j+1
}

m<-2.987
while(m<=4.987){
	m<- m+0.987
	print(c(m,m-2,m-1))
}


##functions

h<-1
aaa = function(r){
	h<<-h+1
	r<-h+r
	print(r)
}

aaa(3)
