filename<-"household_power_consumption.txt"
data<-read.table(filename,sep=";")
subsetData<-data[data[,1]=="1/2/2007"|data[,1]=="2/2/2007",]
plot(as.numeric(as.character(subsetData[,3])),type="l",xaxt="n",xlab="", ylab="Global Active Power (kilowatts)")
axis(side=1,at=c(1,1440,2880),labels=c("Thu","Fri","Sat"))
