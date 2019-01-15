library(lubridate)
library(dplyr)

#load data with ; and ? for NA
read.csv("../household_power_consumption.txt",sep=";",na.strings='?')->pwr

#use lubridate to get dates and times
pwr%>%mutate(Date=dmy(as.character(Date)))%>%filter(Date==ymd(20070201)|Date==ymd(20070202))%>%
mutate(Time=hms(as.character(Time)))->pwrt

#make date time field
datetime=pwrt$Date+pwrt$Time

#add field to data frame
cbind(pwrt,datetime)->pwr2

#clean up to save memory and prevent using wrong data frame
rm(pwr,pwrt,datetime)


#start plotting
par(bg="white")

hist(pwr2$Global_active_power,xlab="Global Active Power (kilowatts)",col="red",main="Global Active Power")

dev.copy(png,filename="plot1.png",width=480,height=480)

dev.off()

