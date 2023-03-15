### TidyTuesday no.3 Country regions ###
### 2023/03/05 ###
# Roshan Fallah #

# Loading Libraries
library(tidyverse)
library(here)

#loading data
install.packages("tidytuesdayR")
tuesdata <- tidytuesdayR::tt_load('2023-02-28')

#reading in my chosen data csv file
country_regions <- tuesdata$country_regions

view(country_regions)

ggplot(data = country_regions,  ## producing plot
       aes(x = region, y = country))+

geom_point(size = 7, colour = "red")+  ## making points more visible
  facet_wrap(~ region)+   ## I prefered a histo but struggled so used fw to make at least a bit interpretable < is this even a word
  theme(axis.title = element_text(size = 22,
                                  color = "blue"),
        panel.background = element_rect(fill = "pink"))+
labs(title = "Number of Countries in regions of Africa",
     size = 24)+

## sometimes I spend ages trying to do small adjustments
#like widen areas for readability but all my hrs goes to problem solving rather than
## the task in hand and i know we did this in class as i always check lecture slides 
#however sometimes it just doesnt change for my current setup or how my axis is etc
## I am spending more time figuring it out so I will hopefully keep improving.
## sorry for the 10 minute life story

ggsave(here("Output", "Tidy_3", "country_regions_Tidy_3.png"),
       width = 15, height = 10) # in inches
