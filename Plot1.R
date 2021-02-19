EPCdata <- read.table("./exdata_data_household_power_consumption/household_power_consumption.txt", header = TRUE, sep = ";", na = "?")
EPCsubset <- subset(EPCdata, Date == "1/2/2007" | Date == "2/2/2007")
hist(EPCsubset$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
png(filename = "Plot1.png")
