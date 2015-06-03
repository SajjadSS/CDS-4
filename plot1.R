data<-read.table("household_power_consumption.txt",header=TRUE,sep=";")
sub_data<-data[c(which(data$Date=="1/2/2007"),which(data$Date=="2/2/2007")),c("Date","Global_active_power","Voltage","Sub_metering_1","Sub_metering_2","Sub_metering_3")]
png("plot1.png",width=4, height=4,units="in",res=480)
hist(as.numeric(as.character(sub_data$Global_active_power)),main="Global Active Power",xlab="Global Active Power(kilowatts)",ylab="Frequency",col="red")
dev.off()
