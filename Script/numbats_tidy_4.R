### TidyTuesday no.4 Numbats ###
## 2023/03/05 ##
# Roshan Fallah #

##loading libraries
library(tidyverse)
library(here)
library(maps)
library(mapdata)
library(mapproj)
library(dplyr)
library(ggplot2)
library(rayshader)
library(ggmap)
library(ggsn)
library(grid)


install.packages("rayshader")
##loading data
tuesdata <- tidytuesdayR::tt_load('2023-03-07')

numbats <- tuesdata$numbats

view(numbats)

#tidying data removing columns


numbats1 <- numbats %>% select(-prcp, -tmax, -tmin)   ## removing columns
numbats2 <- na.omit(numbats1)   ##removing all na's'
##still removing more columns
numbats3 <- numbats2 %>% select(-scientificName, -dataResourceName, -wday,
                                -dryandra, -hour, -taxonConceptID, -recordID)

view(numbats3)


register_google(key = "AIzaSyAOb8vDcmuEg-IVplAe73XJvBjcsyqx1a8", write = TRUE)
australia<-get_map("Australia")  #getting ozland

ggmap(australia)

oz<-data.frame(lon = 130, lat = -25)  #coordinates to zoom to#
ozggmap<-get_map(oz, zoom = 4) #a bit too zoomed out but zoom #5 was too in and it doesnt accept decimals
ggmap(ozggmap)



##ozmap2 <- fortify(ozmap) may use this later tried to convert to ggplot2 for rayshader package but didnt work so leaving function here

ggmap(ozggmap)+
  geom_point(data = numbats3, aes(x = decimalLongitude, y = decimalLatitude,
                                  color = year), size = 3) +
  ggtitle("Numbats in Australia")
  
## really dont get why its showing numbats in 1900's! :(
             
# I really spent a while converting the plots back and forward to different formats to make it readable for applying  
# my new "rayshader" map package for the group presentation as practice and as it looks super cool. However, I need to learn 
# this package from scratch rather than try and implement it in the middle of something else which didnt work and caused me to hallucinate.
# :)