#Must run plot1.R first to load data

par(bg="white")

with(pwr2,plot(datetime,Sub_metering_1,col='black',type='l',xlab='',ylab='Energy sub metering'))
with(pwr2,points(datetime,Sub_metering_2,col='red',type='l'))
with(pwr2,points(datetime,Sub_metering_3,col='blue',type='l'))

legend("topright",lty=c(1),col=c('black','red','blue'),c('Sub_metering_1','Sub_metering_2','Sub_metering_3'))


dev.copy(png,filename="plot3.png",width=480,height=480)

dev.off()

