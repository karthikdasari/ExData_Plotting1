setwd("/Users/karthikdasari/Desktop/Coursera") # To set the working directory to the folder containing data
                                                
options(stringsAsFactors = FALSE)

data <- read.table("household_power_consumption.txt", sep = ";", header = TRUE)

data$Date <- as.Date(data$Date, format = "%d/%m/%Y") # converting date to appropriate format

datar <- data[(data$Date =="2007-02-01" | data$Date == "2007-02-02"),] # Subsetting the required data

datar$Global_active_power <- as.numeric(datar$Global_active_power# converting the data to numeric class
                                        
png(file = "plot1.png") # opens the graphic device PNG

hist(datar$Global_active_power, col = "red", xlab = "Global Active Power (Kiloatts)", main = "Global Active Power")

dev.off() 
