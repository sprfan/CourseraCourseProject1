# create the 4:th plot (plot4.png)
# FanFei


if (! exists("hpc")) {
  print("importing Electric power consumption data...")
  source(paste0(getwd(), "/Courseproject1.R"))
}

png("plot4.png")
par(mfrow = c(2, 2))
# top left
plot(
  hpc$DateTime,
  hpc$Global_active_power, 
  type="l",
  ylab = "Global Active Power",
  xlab = ""
)

# top right
plot(
  hpc$DateTime,
  hpc$Voltage, 
  type="l",
  ylab = "Voltage",
  xlab = "datetime"
)

# bottom left
plot(
  hpc$DateTime,
  hpc$Sub_metering_1, 
  type="l",
  ylab = "Energy sub metering",
  xlab = ""
)

lines(hpc$DateTime,
  hpc$Sub_metering_2, 
  type="l",
  col = "red"
)

lines(hpc$DateTime,
  hpc$Sub_metering_3, 
  type="l",
  col = "blue"
)

legend(
  "topright",
  legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
  col = c("black", "red", "blue"),
  lty = 1,
  lwd = 3,
  y.intersp = 1.5
)

# bottom right
plot(
  hpc$DateTime,
  hpc$Global_reactive_power, 
  type="l",
  ylab = "Global_reactive_power",
  xlab = "datetime"
)

dev.off()