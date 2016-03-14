household_power_consumption <- read.csv("C:/Users/Prueva/Desktop/household_power_consumption.txt", sep=";")
x<-household_power_consumption
as.Date(x$Date)
strptime(x$Time)
sub1<-as.numeric(alpha$Sub_metering_1)
sub2<-as.numeric(alpha$Sub_metering_2)
sub3<-as.numeric(alpha$Sub_metering_3)
ts.plot(sub1 & sub2 & sub3, ylab="Energy sub metering")
points(sub2, col="red")
points(sub3, col="blue")
legend("topright",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
ts.plot(alpha$Global_reactive_power,ylab="Global Reactive Power", xlab="datetime"
