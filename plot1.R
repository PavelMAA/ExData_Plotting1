#plot1.R

#Code for Plot1
with(powCon, hist(Global_active_power, xlab = "Global Active Power (kilowatts)",
                       col = "red", main = "Global Active Power"))
#Code for plot1 in PNG file
dev.copy(device = png, width = 480, height = 480, file = "Plot1.png")
