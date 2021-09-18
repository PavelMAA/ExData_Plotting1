
#Convert variable
#convert the Date and Time variables to Date/Time classes
powCon$Date <- as.Date(powCon$Date, format = "%d/%m/%Y")

powCon$DateTime <- strptime(paste(powCon$Date,powCon$Time),
                                 format = "%Y-%m-%d %H:%M:%S")

#Using data from "2007-2-1" to "2007-2-2"
powCon <- powCon[powCon$Date >= "2007-2-1" & powCon$Date <= "2007-2-2",]

str(powCon)

# Change the data as "num" from "chr" form
powCon[,3] <- as.numeric(powCon[,3])
powCon[,4] <- as.numeric(powCon[,4])
powCon[,5] <- as.numeric(powCon[,5])
powCon[,6] <- as.numeric(powCon[,6])
powCon[,7] <- as.numeric(powCon[,7])
powCon[,8] <- as.numeric(powCon[,8])

