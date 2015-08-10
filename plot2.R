## loading the data from the Desktop directory
data <- read.table("household_power_consumption.txt",header=T, sep=";",nrows=2880,skip=66636)
colnames(data) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
## plot2
plot(data$Global_active_power,ylab="Global Active Power (kilowatts)",sub=NULL,xaxt="n", type="n")
lines(data$Global_active_power,col="black")
axis(1,at=c(1,1440,2880),labels=c("Thu","Fri","Sat"))