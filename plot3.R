## loading the data from the Desktop directory
data <- read.table("household_power_consumption.txt",header=T, sep=";",nrows=2880,skip=66636)
colnames(data) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
## plot3
plot(c(data$Sub_metering_1, data$Sub_metering2, data$Sub_metering3),xlab="",ylab="Energy sub metering",xaxt="n",type="n")
lines(data$Sub_metering_1,col="black")
lines(data$Sub_metering_2,col="red")
lines(data$Sub_metering_3,col="blue")
axis(1,at=c(1,1440,2880),labels=c("Thu","Fri","Sat"))
axis(2,at=c(0,10,20,30),labels=c("0","10","20","30"))
legend("topright",pch=1,col=c("black","red","blue"),legend=c("Sub-metering_1","Sub_metering_2","Sub_metering_3"),cex=0.8)