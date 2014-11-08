data <- read.table("household_power_consumption.txt", sep = ";", na.strings = "?", header = TRUE)
data[,1] <- as.Date(data[,1], format = "%d/%m/%Y")
t <- subset(data, Date == as.Date(" 2007-02-01") | Date == as.Date("2007-02-02") )

#1
png(filename = "plot1.png")
hist(t$Global_active_power, col = "red", main = paste("Global Active Power"), xlab = paste("Global Active Power (kilowatts)"), ylab = "Frequency", ylim = c(0,1200), right = T)  
dev.off()