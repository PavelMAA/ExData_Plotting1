#plot4.R

#Code for Plot2

par(mfrow = c(2,2))
#Plot at topleft
with(powCon, plot(DateTime, Global_active_power, type = "l", xlab = "",
                       ylab = "Global Active Power", xaxt = "n"))
axis(side = 1, at = c(as.numeric(powCon$DateTime[1]),
                      as.numeric(powCon$DateTime[1441]),
                      as.numeric(powCon$DateTime[2880])),labels = c("Thu","Fri","Sat"))
#Plot at topright
with(powCon, plot(DateTime, Voltage, type = "l", xlab = "datetime", ylab = "Voltage",
                       xaxt = "n"))
axis(side = 1, at = c(as.numeric(powCon$DateTime[1]),
                      as.numeric(powCon$DateTime[1441]),
                      as.numeric(powCon$DateTime[2880])),labels = c("Thu","Fri","Sat"))
#Plot at bottomleft
with(powCon, plot(DateTime, Sub_metering_1, type = "n", xaxt = "n",
                       xlab = "", ylab = "Energy sub metering"))
axis(side = 1, at = c(as.numeric(powCon$DateTime[1]),
                      as.numeric(powCon$DateTime[1441]),
                      as.numeric(powCon$DateTime[2880])),labels = c("Thu","Fri","Sat"))
with(powCon, lines(DateTime, Sub_metering_1))
with(powCon, lines(DateTime, Sub_metering_2, col = "red"))
with(powCon, lines(DateTime, Sub_metering_3, col = "blue"))
legend("topright",lty = 1, col=c("black","red","blue"),
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

#Plot at bottomright
with(powCon, plot(DateTime, Global_reactive_power, type= "l", xlab = "datetime", 
                       ylab = "Global_reactive_power", xaxt = "n"))
axis(side = 1, at = c(as.numeric(powCon$DateTime[1]),
                      as.numeric(powCon$DateTime[1441]),
                      as.numeric(powCon$DateTime[2880])),labels = c("Thu","Fri","Sat"))
#Code for plot2 in PNG file
dev.copy(device = png, width = 480, height = 480, file = "Plot4.png")
