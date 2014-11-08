data <- read.table("household_power_consumption.txt", sep = ";", na.strings = "?", header = TRUE)
data[,1] <- as.Date(data[,1], format = "%d/%m/%Y")
t <- subset(data, Date == as.Date(" 2007-02-01") | Date == as.Date("2007-02-02") )


#2
png(filename = "plot2.png")
plot(t$Global_active_power, type="l", col="black", axes = F, ylab = "Global Active Power (kilowatts)", xlab = "")
axis(1, at = c(0, 1440, 2880), lab=c("Thu","Fri", "Sat"))
axis(2)
box()
dev.off()