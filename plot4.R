consumption_raw = read.table("household_power_consumption.txt", na.strings = "?", header = T, sep = ";")
consumption = subset(consumption_raw, Date == "1/2/2007" | Date == "2/2/2007")

#plot4
png("plot4.png")
par(mfcol = c(2,2), bg = "transparent")
plot(dates, consumption$Global_active_power, xlab = "", ylab = "Global Active Power", type = "l")
plot(dates, consumption$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(dates, consumption$Sub_metering_2, col="red")
lines(dates, consumption$Sub_metering_3, col="blue")
legend("topright", legend = c("Sub_metering1", "Sub_metering2", "Sub_metering3"), col = c("black", "orange", "blue"), lwd = 1, box.lwd = 0)
plot(dates, consumption$Voltage, xlab = "datetime", ylab = "Voltage", type = "l")
plot(dates, consumption$Global_reactive_power, xlab = "datetime", ylab = "Global_reactive_power", type = "l")
dev.off()