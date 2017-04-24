##Loading the dataset
e_power_consumption <- read.csv(file = "/User/cfarin/Downloads/household_power_consumption.txt", 
        header = TRUE, sep = ";", na.strings = "?")

## Subsetting the Date
date <- subset(e_power_consumption, subset=(Date == "2007-02-01" & Date == "2007-02-02"))

##Converting the date variable to date class
date_class <- as.Date(e_power_consumption$Date, format = "%d/%m/%Y")

##Converting the Date and Time
date_time <- paste(e_power_consumption$Date), e_power_consumption$Time)
e_power_consumption$date_time <- as.POSIXct(date_time)

##Plotting & Saving to png file 
dev.copy(png, file = "plot2.png", height = 480, width = 480)
plot(e_power_consumption$Global Active Power ~ e_power_consumption$date_time, 
      type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
dev.off()
