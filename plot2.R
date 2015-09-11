consumption <- read.table("household_power_consumption.txt", header = T , sep = ";" , stringsAsFactors = F)
subdata <- consumption[consumption$Date %in% c("1/2/2007" , "2/2/2007" ),]
globalactivepower <- as.numeric(subdata$Global_active_power)

datetime <- strptime(paste(subdata$Date , subdata$Time , sep = " ") , "%d/%m/%Y %H:%M:%S")
png("plot2.png" , height = 480 , width = 480)
plot(datetime,globalactivepower,type ="l" , xlab = "" , ylab = "Global Active Consumption (kilowatts)")
dev.off()
