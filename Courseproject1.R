# ETL part for all the plots
# Fan Fei


if (! file.exists("household_power_consumption.zip")) {
  download.file(
    url = "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", 
    destfile = "household_power_consumption.zip",
    method = "curl"
  )  
}

if (! file.exists("household_power_consumption.txt")) {
  unzip(zipfile = "household_power_consumption.zip", unzip = Sys.which("unzip"))  
}

# Read all data as character so we dont get unintended conversions to integer etc.
hpc <- read.csv("household_power_consumption.txt", 
        sep = ";", 
        stringsAsFactor=FALSE,
        colClasses=c(rep("character",9)))
        
# NA is represented by "?" so replace them        
hpc[ hpc == "?" ] <- NA

# Create a date time column by combining Date and Time
hpc$DateTime <- strptime(paste(hpc$Date, hpc$Time),format='%d/%m/%Y %H:%M:%S')

hpc$Date <- as.Date(hpc$Date, format = "%d/%m/%Y")

# Reduce dataset to the timeframe we are interested in
hpc <- subset(hpc, Date >= '2007-02-01' & Date <= '2007-02-02')

hpc$Global_active_power <- as.numeric(hpc$Global_active_power)
hpc$Global_reactive_power <- as.numeric(hpc$Global_reactive_power)
hpc$Voltage <- as.numeric(hpc$Voltage)
hpc$Global_intensity <- as.numeric(hpc$Global_intensity)
hpc$Sub_metering_1 <- as.numeric(hpc$Sub_metering_1)
hpc$Sub_metering_2 <- as.numeric(hpc$Sub_metering_2)
hpc$Sub_metering_3 <- as.numeric(hpc$Sub_metering_3)





