#plot2.R

#Code for Plot2
with(powCon, plot(DateTime, Global_active_power, type = "l", xlab = "",
                       ylab = "Global Active Power (kilowatts)"))

axis(side = 1, at = c(as.numeric(powCon$DateTime[1]),
                      as.numeric(powCon$DateTime[1441]),
                      as.numeric(powCon$DateTime[2880])),labels = c("Thu","Fri","Sat"))


#Code for plot2 in PNG file
dev.copy(device = png, width = 480, height = 480, file = "Plot2.png")
