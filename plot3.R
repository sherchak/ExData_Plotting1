filename<-"household_power_consumption.txt"
data<-read.table(filename,sep=";")
subsetData<-data[data[,1]=="1/2/2007"|data[,1]=="2/2/2007",]
plot(as.numeric(as.character(subsetData[,7])),type="l",xaxt="n",xlab="", ylab="Energy sub metering")
axis(side=1,at=c(1,1440,2880),labels=c("Thu","Fri","Sat"))
lines(as.numeric(as.character(subsetData[,8])),col="red")
lines(as.numeric(as.character(subsetData[,9])),col="blue")
legend(x="topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1)