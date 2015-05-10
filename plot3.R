##make numeric vectors to use and datetime vector
dataTime <- strptime(paste(data1$Date,data1$Time),format="%d/%m/%Y %H:%M:%S")
dataNum1 <- as.numeric(data1$Sub_metering_1)
dataNum2 <- as.numeric(data1$Sub_metering_2)
dataNum3 <- as.numeric(data1$Sub_metering_3)

##make the plot (save to png)
png(filename = "Plot3.png", width=480, height=480)
plot(dataTime, dataNum1, type="l", ylab="Energy Submetering", xlab="")
lines(dataTime, dataNum2, type="l", col="red")
lines(dataTime, dataNum3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off() 

