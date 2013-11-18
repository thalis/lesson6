rm(list = ls())

library(raster)
library(rgdal)
library(sp)
library(ggplot2)
library(rasterVis)
library(rasta)

data(GewataB2)
data(GewataB3)
data(GewataB4)
data(lulcGewata)
data(LUTGewata)
trainingPoly<-readOGR("data", "trainingPoly")

# 1. a plot of the original lulcGewata raster with a meaningful legend 
cols <- c("orange", "light green", "brown", "light pink", "dark green", "light blue")
plot(lulcGewata, col=cols, legend=FALSE)
legend("topright", legend=LUTGewata$Class, fill=cols)

# 2. a plot of your training polygons
plot(trainingPoly, add=TRUE)

