data <- read.table("household_power_consumption.txt", sep = ";", na.strings = "?", header = TRUE)
data[,1] <- as.Date(data[,1], format = "%d/%m/%Y")
t <- subset(data, Date == as.Date(" 2007-02-01") | Date == as.Date("2007-02-02") )


#3
png(filename = "plot3.png")
plot(t$Sub_metering_1, type = "l", axes = F, ylab = "Energy sub metering", xlab ="")
lines(t$Sub_metering_2, type="l", col="red")
lines(t$Sub_metering_3, type="l", col="blue")
axis(1, at = c(0, 1440, 2880), lab=c("Thu","Fri", "Sat"))
axis(2)
legend("topright", lty = 1, legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), col=c("black","red","blue"))
box()
dev.off()