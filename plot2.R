data<-read.table("household_power_consumption.txt",header=TRUE,sep=";")
sub_data<-data[c(which(data$Date=="1/2/2007"),which(data$Date=="2/2/2007")),c("Date","Time","Global_active_power","Voltage","Sub_metering_1","Sub_metering_2","Sub_metering_3")]
png("plot2.png",width=4, height=4,units="in",res=480)
plot(1:length(sub_data$Global_active_power),as.numeric(as.character(sub_data$Global_active_power)),lty=c(1,1,1),type="l",lwd=1,labels=FALSE,xaxt="n",xlab='',ylab="Global Active Power(kilowatts)")
axis(1,at=c(0,1440,2880),labels=c("Th","Fr","Sa"))
axis(2,at=c(0,2,4,6),labels=c(0,2,4,6))
dev.off()


