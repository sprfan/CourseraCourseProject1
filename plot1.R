# create the first plot (plot1.png) 
# Fan Fei


# Keep it a bit more DRY
if (! exists("hpc")) {
  print("importing Electric power consumption data...")
  source(paste0(getwd(), "/Courseproject1.R"))
}

png("plot1.png")
hist(
  hpc$Global_active_power, 
  main = "Global Active Power",
  xlab = "Global Active Power (kilowatts)",
  col = "red"
)

dev.off()