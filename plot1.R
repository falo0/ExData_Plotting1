consumption_raw = read.table("household_power_consumption.txt", na.strings = "?", header = T, sep = ";")
consumption = subset(consumption_raw, Date == "1/2/2007" | Date == "2/2/2007")

#plot1
par(mfcol = c(1,1), bg="transparent")
hist(consumption$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.copy(png, "plot1.png")
dev.off()