data <- read.csv("household_power_consumption.txt", header = TRUE, sep = ";")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot1.png", height = 480, width = 480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

dev.off()
