data<-read.table("household_power_consumption.txt",header=TRUE,sep = ";",quote="", na.strings = "?")
x <- as.Date(data$Date,format="%d/%m/%Y") == "2007-02-01"
y <- as.Date(data$Date,format="%d/%m/%Y") == "2007-02-02"
data2 <- data[x|y,]
data2$datetime <- strptime(paste(data2$Date,data2$Time),format="%d/%m/%Y %H:%M:%S")
png("plot2.png", width=480, height=480)
plot(data2$datetime,data2$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab="")
