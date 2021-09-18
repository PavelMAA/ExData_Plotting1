#plot3.R

#Code for Plot2
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

#Code for plot2 in PNG file
dev.copy(device = png, width = 480, height = 480, file = "Plot3.png")
