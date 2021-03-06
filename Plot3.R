EPCdata <- read.table("./exdata_data_household_power_consumption/household_power_consumption.txt", header = TRUE, sep = ";", na = "?")
EPCsubset <- subset(EPCdata, Date == "1/2/2007" | Date == "2/2/2007")

datetime <- strptime(paste(EPCsubset$Date, EPCsubset$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

png(filename = "Plot3.png", width = 480, height = 480)

plot(datetime, EPCsubset$Sub_metering_1, pch = NA_integer_, xlab = " ", ylab = "Energy sub metering", lines(datetime, EPCsubset$Sub_metering_1))

points(datetime, EPCsubset$Sub_metering_2, col="red", pch= NA_integer_)
lines(datetime, EPCsubset$Sub_metering_2, col="red",lty=1)

points(datetime, EPCsubset$Sub_metering_3, col="blue", pch= NA_integer_)
lines(datetime, EPCsubset$Sub_metering_3, col="blue",lty=1)

legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()