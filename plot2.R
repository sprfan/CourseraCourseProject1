# create the second plot (plot2.png)
# Fan Fei


if (! exists("hpc")) {
  print("importing Electric power consumption data...")
  source(paste0(getwd(), "/Courseproject1.R"))
}

png("plot2.png")
plot(
  hpc$DateTime,
  hpc$Global_active_power, 
  type="l",
  ylab = "Global Active Power (kilowatts)",
  xlab = ""
)

dev.off()