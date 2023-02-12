## This R script is for TidyTuesdays No.2 Week3 ##
### Created by: Roshan Fallah ###
### Updated on: 2023-02-12 ###

#load libraries#
library(palmerpenguins)
library(tidyverse)
library(here)

###load data###
glimpse(penguins)


ggplot(data = penguins,
       mapping = aes(x = flipper_length_mm))+
  geom_histogram(aes(fill = species),
                 
alpha = 0.5, position = "identity") +
  labs(x = "Flipper Length (mm)",
       y = "Frequency")+
  
scale_color_manual(values = beyonce_palette(14))+ ##not working dont know why##
  scale_x_continuous(breaks = c(180, 200, 220),
                     labels = c("low", "medium", "high"))+
  theme_bw()+
  theme(axis.title = element_text(size = 20, 
                                  color = "red"))+
ggtitle("Histoplot of flipper length in different penguin species")

ggsave(here("week_03","output","TT2_penguin.png"))
  
                     #couldnt get the beyonce palette to work I tried to mess with,
#data in order for it to work tried online help and scripts just didnt work#
#will continue to try different script commands, I ate 1 million calories to cope#
  