setwd("/Users/karthikdasari/Desktop/Coursera") # To set the working directory to the 
# folder containing data
options(stringsAsFactors = FALSE)

data <- read.table("household_power_consumption.txt", sep = ";", header = TRUE)

data$Date <- as.Date(data$Date, format = "%d/%m/%Y") # converting date to appropriate format

datar <- data[(data$Date =="2007-02-01" | data$Date == "2007-02-02"),] # Subsetting the required data

a <- strptime(paste(datar$Date, datar$Time), format = "%Y-%m-%d %H:%M:%S")

png(file = "plot2.png", width = 480, height = 480, bg = "white") # opens the graphic device PNG

plot(a, as.numeric(datar$Global_active_power), type = "l", ylab = "Global Active Power (Kilowatts)" , xlab = "")

dev.off()
