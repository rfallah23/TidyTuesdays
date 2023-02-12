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
       mapping = aes(x = bill_depth_mm,
                     y = bill_length_mm,
                     group = species,
                     color = species))+
  geom_boxplot()+
  geom_jitter()+
  labs(x = "Bill Length (mm)",
       y = "Body Mass (g)"
      
  )+
scale_color_manual(values = beyonce_palette(11))+
  #scale_x_continuous(breaks = c(40,46,52),
  #labels = c("low", "medium", "high"))+
theme_bw()+
  theme(axis.title = element_text(size = 16,
                                  color = "purple"),
  panel.background = element_rect(fill = "pink"))+
  ggtitle("The relationship between weight and bill length in 3 penguins species")+
  theme(plot.title = element_text(color = "red"))

  
ggsave(here("week_03","output","TT1_penguin.png"))


       