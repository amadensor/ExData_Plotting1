#Must run plot1.R first to load data

par(bg="white")

with(pwr2,plot(datetime,Global_active_power,type="l",ylab="Global Active Power (kilowatts)", xlab=""))

dev.copy(png,filename="plot2.png",width=480,height=480)

dev.off()


