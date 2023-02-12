## This R script is for TidyTuesdays No.1 Week3 ##
### Created by: Roshan Fallah ###
### Updated on: 2023-02-11 ###

#load libraries#
library(palmerpenguins)
library(tidyverse)
library(here)

###load data###
glimpse(penguins)

ggplot(data=penguins,
       mapping = aes(x = bill_length_mm,
                     y = body_mass_g,
                     group = species,
                     color = species))+
  geom_boxplot()+
  labs(x = "Bill Length (mm)",
       y = "Body Mass (g)"
  )
  