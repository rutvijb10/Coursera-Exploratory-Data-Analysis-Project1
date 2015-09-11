consumption <- read.table("household_power_consumption.txt", header = T , sep = ";" , stringsAsFactors = F)
subdata <- consumption[consumption$Date %in% c("1/2/2007" , "2/2/2007" ),]

globalactivepower <- as.numeric(subdata$Global_active_power)
datetime <- strptime(paste(subdata$Date , subdata$Time , sep = " ") , "%d/%m/%Y %H:%M:%S")
sub_metering_1 <- as.numeric(subdata$Sub_metering_1)
sub_metering_2 <- as.numeric(subdata$Sub_metering_2)
sub_metering_3 <- as.numeric(subdata$Sub_metering_3)

png("plot3.png" , height = 480 , width = 480)
plot(datetime , sub_metering_1 , type = "l" , ylab = "Energy sub metering" ,xlab = "")
lines(datetime, sub_metering_2 , type = "l" , col = "red")
lines(datetime , sub_metering_3 ,type = "l" , col ="blue")
legend("topright" , c("Sub_metering_1" , "Sub_metering_2" , "Sub_metering_3") , lty = 1 ,
       lwd = 2.5 , col = c("black" , "red" ,"blue"))
dev.off()
