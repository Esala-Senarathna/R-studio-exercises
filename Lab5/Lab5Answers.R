setwd("C:\\Users\\Esala\\Desktop\\SLIIT\\P&S\\PS labs\\R-studio-exercises\\Lab5")

data<-read.table("Data File.txt", header = TRUE,sep = ",")
fix(data)

names(data)<-c("x1","x2")

#attaching the data
attach(data)#execute the cammand 2 times

#Q1  Draw a histogram for the above data.
hist(x2, main="Histogram of No. of shareholders", xlab="No of shareholders")


#Q2 Draw a histogram using seven classes where the lower limit is 130 and an upper limit of 270.

histogram<-hist(x2, main="Histogram of No. of shareholders", xlab="No of shareholders", breaks = seq(130,270,length=8))

#display breakpoints of the graph 
histogram

#Q3 Construct the frequency distribution for the above specification.

breaks<-histogram$breaks
breaks

freq<-histogram$counts
freq

classes<-c()
for(i in 1:length(breaks)-1){
	classes[i]<-paste0("[",breaks[i],"-",breaks[i+1],"]")
}

cbind(CLASSES=classes,FREQUENCY=freq)


#Q4 Portray the distribution in the form of a frequency polygon.

mids<-histogram$mids

#draw on the same histogram
lines(mids,freq)

#draw the polygon on a seperate plot
plot(mids,freq,type='l',main="Frequency polygon", xlab="Shareholders",ylab="frequency",ylim=c(0,max(freq)))


#Q5 Portray the distribution in a less-than cumulative frequency polygon.

cum.freq<-cumsum(freq)
new<-c()
for (i in 1:length(breaks)){
	if(i ==1){
		new[i]= 0
	}else{
		new[i]=cum.freq[i-1]
	}
}








