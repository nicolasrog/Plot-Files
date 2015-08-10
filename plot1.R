## loading the data from the Desktop directory
data <- read.table("household_power_consumption.txt",header=T, sep=";",nrows=2880,skip=66636)
colnames(data) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
## plot1
hist(data$Global_active_power,breaks=12,col="red",main="Global Active Power", xlab="Global Active Power (kilowatts)",ylab="Frequency")