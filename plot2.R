consumption_raw = read.table("household_power_consumption.txt", na.strings = "?", header = T, sep = ";")
consumption = subset(consumption_raw, Date == "1/2/2007" | Date == "2/2/2007")

#plot2
par(bg="transparent")
dates = strptime(paste(consumption$Date, consumption$Time), format = "%d/%m/%Y %H:%M:%S")
plot(dates, consumption$Global_active_power, xlab = "", ylab = "Global Active Power (kilowatts)", type = "l")
dev.copy(png, "plot2.png")
dev.off()