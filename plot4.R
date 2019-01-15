#Must run plot1.R first to load data

par(mfrow=c(2,2))
par(bg="white")
#source("plot2.R")   Couldn't source, different ylab
with(pwr2,plot(datetime,Global_active_power,type="l",ylab="Global Active Power", xlab=""))

with(pwr2,plot(datetime,Voltage,type="l"))

with(pwr2,plot(datetime,Sub_metering_1,col='black',type='l',xlab='',ylab='Energy sub metering'))
with(pwr2,points(datetime,Sub_metering_2,col='red',type='l'))
with(pwr2,points(datetime,Sub_metering_3,col='blue',type='l'))

legend("topright",lty=c(1),col=c('black','red','blue'),c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),bty='n')

with(pwr2,plot(datetime,Global_reactive_power,type="l"))

dev.copy(png,filename="plot4.png",width=480,height=480)

dev.off()

