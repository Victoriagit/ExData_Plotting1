##Loading the dataset
e_power_consumption <- read.csv(file = "/Users/cfarin/Downloads/household_power_consumption.txt", 
        header = TRUE, sep = ";", na.strings = "?")

## Subsetting the Date
date <- subset(e_power_consumption, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))

##Converting the date variable to date class
date_class <- as.Date(e_power_consumption$Date, format = "%d/%m/%Y")

##Converting the Date and Time
date_time <- paste(as.Date(e_power_consumption$Date), e_power_consumption$Time)

##Plotting & Saving to png file 

dev.copy(png, file = "plot1.png", height = 480, width = 480)
hist(e_power_consumption$Global_active_power, main = "Global Active Power", 
      col = "Red", xlab = "Global Active Power (kilowatts)")
dev.off()
