#Set working directory and Downloaded file
setwd("~/datasciencecoursera/ExData_Plotting1")
# Loading dataset
#read txt file
powCon<- read.csv("household_power_consumption.txt", sep = ";", stringsAsFactors = FALSE)
head(powCon)
dim(powCon)


