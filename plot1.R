filename<-"household_power_consumption.txt"
data<-read.table(filename,sep=";")
subsetData<-data[data[,1]=="1/2/2007"|data[,1]=="2/2/2007",]
hist(as.numeric(as.character(subsetData[,3])), col="red",main="Global Active Power", xlab="Global Active Power (kilowatts)")
