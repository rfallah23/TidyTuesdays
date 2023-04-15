## Today I will be producing the 5th TidyTuesday ##
## European Drug Development ##
## Roshan Fallah ##

## Load libraries


library(here)
library(tidyverse)
library(dplyr)
library(ggplot2)
library(patchwork)
library(viridis)
library(png)
library(grid)
library(ggpattern)
library(RColorBrewer)
img <- readPNG("C:\\Users\\roshf\\OneDrive\\Desktop\\CSUN\\Computer Modeling - Biol-551\\images gifs and links\\123.png")

img

## Loading data

#tuesdata <- tidytuesdayR::tt_load('2023-03-14')

drugs <- tuesdata$drugs

view(drugs)

hyperdrugs <- drugs %>%
  filter(therapeutic_area %in% c("Colorectal Neoplasms", 
                                 "Carcinoma, Non-Small-Cell Lung", 
                                 "Carcinoma, Renal Cell", 
                                 "Breast Neoplasms"))

redtext <- function() {
  theme(plot.title = element_text(color = "red"),
        axis.text = element_text(color = "red"),
        axis.title = element_text(color = "red"))   ## i just added this at the very end 


view(hyperdrugs)

ggplot(data = hyperdrugs,aes(x = therapeutic_area))+
  geom_bar(stat = "count", color = "red", fill = "grey")+
  scale_color_brewer()+  ## this doesnt work
  ggtitle("Four main areas of treatment in European drug development")+
  redtext()


}

#ggsave(here("Output", "Tidy_5", "drugs_tidy5.png"))

## there was no data in the bars so this is why none of the color palettes seem to work.
## took absolutely ages before that became apparent
