#!/usr/bin/R

#Código para generar un mapa en R:
# R
# Creating a large scale map using ggplot2: a step by step guide.
# https://sejohnston.com/2012/07/03/creating-a-large-scale-map-using-ggplot2-a-step-by-step-guide/
library(maptools)
require(gpclib)
gpclibPermit()
worldmap <- readShapeSpatial("world_borders.shp")

library(ggplot2)
worldmap <- fortify(worldmap)

latlimits <- c(40, 75)
longlimits <- c(-25, 50)

ggplot(worldmap, aes(x = long, y = lat, group = group)) +
  geom_polygon(fill = "darkseagreen") +
  geom_path(colour = "grey40") +
  theme(panel.background = element_rect(fill = "lightsteelblue2", colour = "grey"),
       panel.grid.major = element_line(colour = "grey90"),
       panel.grid.minor = element_blank(),
       axis.ticks = element_blank(),
       axis.text.x = element_text (size = 14, vjust = 0),
       axis.text.y = element_text (size = 14, hjust = 1.3)) +
  coord_cartesian(xlim = longlimits, ylim = latlimits) +
  scale_y_continuous(breaks=seq(40,70,10), labels = c("40ºN", "50ºN", "60ºN", "70ºN")) +
  scale_x_continuous(breaks=seq(-20,40,20), labels = c("20ºW", "0º" ,"20ºE", "40ºE")) +
  labs(y="", x="")
