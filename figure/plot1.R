data<-read.table("household_power_consumption.txt",header=TRUE,sep = ";",quote="", na.strings = "?")
x <- as.Date(data$Date,format="%d/%m/%Y") == "2007-02-01"
y <- as.Date(data$Date,format="%d/%m/%Y") == "2007-02-02"
data2 <- data[x|y,]
png("plot1.png", width=480, height=480)
hist(data2$Global_active_power,col="orangered",main="Global Active Power",xlab = "Global Active Power (kilowatts)")