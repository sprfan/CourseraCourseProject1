#create the third plot (plot3.png)
# Fan Fei


if (! exists("hpc")) {
  print("importing Electric power consumption data...")
  source(paste0(getwd(), "/Courseproject1.R"))
}

png("plot3.png")
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
  lwd = 3, # a bit thicker line
  y.intersp = 1.5 # Add some additional space between rows
)

dev.off()