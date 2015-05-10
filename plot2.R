##make a numeric vector and a datetime vector
dataTime <- strptime(paste(data1$Date,data1$Time),format="%d/%m/%Y %H:%M:%S")
dataNum <- as.numeric((levels(data1$Global_active_power))[data1$Global_active_power])

##make the plot (save to png)
png(filename="Plot2.png", width=480, height=480)
plot(dataTime, dataNum, type = "l", ylab = "Global Active Power (kiloWatts)", xlab="")
dev.off()