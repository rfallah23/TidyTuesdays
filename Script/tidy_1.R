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
  labs(x = "Bill Depth (mm)",
       y = "Bill Length (mm)")+
  

  scale_color_manual(values = beyonce_palette(11))+
  scale_x_continuous(breaks = c(15,17.5,20),
  labels = c("low", "medium", "high"))+
theme_bw()+
  theme(axis.title = element_text(size = 16,
                                  color = "purple"),
  panel.background = element_rect(fill = "pink"))+
  ggtitle("The relationship between weight and bill length in 3 penguins species")+
  theme(plot.title = element_text(color = "red"))

  
ggsave(here("week_03","output","TT1_penguin.png"))

##this plot shows up significantly different in R than when saved in github###
## I spent ages trying to trouble shoot with various data ammendments with the,###
#axis title by removing limits or atleast raising x and y limits so that it express,##
##the other funcions such as the point plots and the plot title, background colour etc##
##there was more data in my console from this exercise than my entire harddrive :-S##
##however I still enjoyed it thank you :)##


       