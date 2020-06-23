library(dplyr)
library(lubridate)
df <- read.table("household_power_consumption.txt",header = TRUE,sep = ";")
df1 <- filter(df,Date == "1/2/2007" | Date == "2/2/2007")
df1$Date <- dmy(df1$Date)
df1$Time <- hms(df1$Time)
df1$Global_active_power <- as.numeric(df1$Global_active_power)
df1$Voltage <- as.numeric(df1$Voltage)
df1$Global_reactive_power <- as.numeric(df1$Global_reactive_power)


## Plot 1
plot(hist(df1$Global_active_power),col = "red",main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)")