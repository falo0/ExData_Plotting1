consumption_raw = read.table("household_power_consumption.txt", na.strings = "?", header = T, sep = ";")
consumption = subset(consumption_raw, Date == "1/2/2007" | Date == "2/2/2007")

#plot3
png("plot3.png")
par(bg="transparent")
plot(dates, consumption$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(dates, consumption$Sub_metering_2, col="red")
lines(dates, consumption$Sub_metering_3, col="blue")
legend("topright", legend = c("Sub_metering1", "Sub_metering2", "Sub_metering3"), col = c("black", "orange", "blue"), lwd = 1)
dev.off()