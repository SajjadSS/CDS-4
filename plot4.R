#data<-read.table("household_power_consumption.txt",header=TRUE,sep=";")
sub_data<-data[c(which(data$Date=="1/2/2007"),which(data$Date=="2/2/2007")),c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Sub_metering_1","Sub_metering_2","Sub_metering_3")]
png("plot4.png",width=4, height=4,units="in",res=480)
par(mfrow=c(2,2),mar=c(3.8,3.6,3.6,1))
#first plot
plot(1:length(sub_data$Global_active_power),as.numeric(as.character(sub_data$Global_active_power)),lty=c(1,1,1),type="l",lwd=1,labels=FALSE,xaxt="n",xlab='',ylab="Global Active Power(kilowatts)",cex.lab=0.5,cex.axis=0.5)
axis(1,at=c(0,1440,2880),labels=c("Th","Fr","Sa"),cex.axis=0.5)
axis(2,at=c(0,2,4,6),labels=c(0,2,4,6),cex.axis=0.5)
#second plot
plot(1:length(sub_data$Voltage),as.numeric(as.character(sub_data$Voltage)),lty=c(1,1,1),type="l",lwd=1,labels=FALSE,xaxt="n",xlab="datetime",ylab="Voltage",cex.lab=0.5,cex.axis=0.5)
axis(1,at=c(0,1440,2880),labels=c("Th","Fr","Sa"),cex.axis=0.5)
axis(2,at=c(234,238,242,246),labels=c(234,238,242,246),cex.axis=0.5)
#third plot
plot(1:length(sub_data$Sub_metering_1),as.numeric(as.character(sub_data$Sub_metering_1)),lty=c(1,1,1),type="l",col="black",lwd=1,labels=FALSE,xaxt="n",yaxt="n",xlab='',ylab='',ylim=c(0,40),cex.lab=0.5,cex.axis=0.5)
par(new=T)
plot(1:length(sub_data$Sub_metering_2),as.numeric(as.character(sub_data$Sub_metering_2)),lty=c(1,1,1),type="l",col="red",lwd=1,labels=FALSE,xaxt="n",yaxt="n",xlab='',ylab='',ylim=c(0,40),cex.lab=0.5,cex.axis=0.5)
par(new=T)
plot(1:length(sub_data$Sub_metering_3),as.numeric(as.character(sub_data$Sub_metering_3)),lty=c(1,1,1),type="l",col="BLUE",lwd=1,labels=FALSE,xaxt="n",xlab='',ylim=c(0,40),ylab="Global Active Power(kilowatts)",cex.lab=0.5,cex.axis=0.5)
par(new=F)
axis(1,at=c(0,1440,2880),labels=c("Th","Fr","Sa"),cex.axis=0.5)
axis(2,at=c(0,10,20,30),labels=c(0,10,20,30),cex.axis=0.5)
legend("topright",c("sub metering 1","sub metering 2","sub metering 3"),lty=c(1,1,1),lwd=c(1,1,1),col=c("black","red","blue"),cex=0.5)
#fourth plot
plot(1:length(sub_data$Global_reactive_power),as.numeric(as.character(sub_data$Global_reactive_power)),lty=c(1,1,1),type="l",lwd=1,labels=FALSE,xaxt="n",xlab='',ylab="Global Reactive Power(kilowatts)",cex.lab=0.5)
axis(1,at=c(0,1440,2880),labels=c("Th","Fr","Sa"),cex.axis=0.5)
axis(2,at=c(0.0,0.1,0.2,0.3,0.4,0.5),labels=c(0.0,0.1,0.2,0.3,0.4,0.5),cex.axis=0.5)
dev.off()
