consumption <- read.table("household_power_consumption.txt", header = T , sep = ";" , stringsAsFactors = F)
subdata <- consumption[consumption$Date %in% c("1/2/2007" , "2/2/2007" ),]
globalactivepower <- as.numeric(subdata$Global_active_power)
png("plot1.png" , height = 480 , width = 480)
hist(globalactivepower , col ="red" , main = "Global Active Power" ,
     xlab = "Global Active Power (kilowatts)")
dev.off()