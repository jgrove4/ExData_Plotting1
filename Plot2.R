EPCdata <- read.table("./exdata_data_household_power_consumption/household_power_consumption.txt", header = TRUE, sep = ";", na = "?")
EPCsubset <- subset(EPCdata, Date == "1/2/2007" | Date == "2/2/2007")

datetime <- strptime(paste(EPCsubset$Date, EPCsubset$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

png(filename = "Plot2.png", width = 480, height = 480)

plot(datetime, EPCsubset$Global_active_power, pch = 26, xlab = " ", ylab = "Global Active Power (kilowatts)")
lines(datetime, EPCsubset$Global_active_power)

dev.off()
