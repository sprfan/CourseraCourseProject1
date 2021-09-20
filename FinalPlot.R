# createall the plots in one go
# Fan Fei

show <- function(fileName) {
  if (exists("inout")) {
    inout$display(paste0(getwd(),"/", fileName), fileName)    
  } else {
    library("png")
    pp <- readPNG(paste0(getwd(),"/", fileName))
    plot.new() 
    rasterImage(pp,0,0,1,1)
  }
}
print("Running plot1.R")
source("plot1.R")
show("plot1.png")
print("Running plot2.R")
source("plot2.R")
show("plot2.png")
print("Running plot3.R")
source("plot3.R")
show("plot3.png")
print("Running plot4.R")
source("plot4.R")
show("plot4.png")
print("Done!")