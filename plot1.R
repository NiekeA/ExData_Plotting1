##load data
data1 <- read.table("household_power_consumption.txt", sep=";", header=TRUE)
##replace data with the part we want to use
data1 <- subset(data1, data1$Date == "1/2/2007" | data1$Date == "2/2/2007")
##make a numeric vector to use for the histogram
dataNum <-  as.numeric(levels(data1$Global_active_power))[data1$Global_active_power]

##make the histogram (save to png)
png(filename="Plot1.png")
hist(dataNum, freq = TRUE, xlab = "Global Active Power (kiloWatts)", col="red", main="Global Active Power")
dev.off()