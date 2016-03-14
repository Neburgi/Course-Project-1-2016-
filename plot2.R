household_power_consumption <- read.csv("C:/Users/Prueva/Desktop/household_power_consumption.txt", sep=";")
x<-household_power_consumption
as.Date(x$Date)
strptime(x$Time)
alpha<-x[which(x$Date=="1/2/2007" | x$Date=="2/2/2007"),]
z<-as.numeric(alpha$Global_active_power)
hist(z/1000,col="blue",main="Global Active Power",xlab="Global Acive Power(kilowatts)")
