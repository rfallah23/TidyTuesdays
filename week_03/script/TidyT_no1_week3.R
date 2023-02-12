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
  geom_smooth(aes(group = "lm"))+
  labs(x = "Bill Length (mm)",
       y = "Body Mass (g)"
      
  )+
scale_color_manual(values = beyonce_palette(11))+
  scale_x_continuous(breaks = c(40,46,52),
  labels = c("low", "medium", "high"))+
theme_bw()+
  theme(axis.title = element_text(size = 16,
                                  color = "purple"),
  panel.background = element_rect(fill = "pink"))
  
ggsave(here("week_03","output","TT1_penguin.png"))


       