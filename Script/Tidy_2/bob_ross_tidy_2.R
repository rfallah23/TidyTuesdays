### TidyTuesday no.2 Bob Ross ###
### 2023/03/04 ###
# Roshan Fallah #

library(tidyverse)  ## library load ##
library(here)

#read in data#
bob_ross <- read_csv(
  "https://raw.githubusercontent.com/jwilber/Bob_Ross_Paintings/master/data/bob_ross_paintings.csv",
)
#load data #
glimpse(bob_ross)
view(bob_ross)
library(here)

##bob_ross <- select(bob_ross, -1) ## was going to remove but now keeping


bob_ross <- bob_ross |>   # mutating named color columns ##
  mutate(across(Black_Gesso:Alizarin_Crimson, 
                as.logical))

view(bob_ross)

##save the data
write_csv(bob_ross,here::here("Data", "bob_ross.csv"))

## keeping the only columns I will produce a plot for #
bob_ross <- select(bob_ross, 1, painting_title, Black_Gesso, Bright_Red)
    
filter(.data = bob_ross, Black_Gesso == TRUE,  #filtering episodes that used black and red paint
       Bright_Red == TRUE)           

bob_ross <- select(bob_ross, -painting_title) # removing painting_title column

view(bob_ross)

ggplot(data = bob_ross,   ## plotting axis ##
       aes(x = Black_Gesso,
           y = ...1))+

geom_boxplot()+     ## producing boxplot ##

labs(x = "Black paint", y= "No. of Episodes")  # labeling axis 
theme_bw()

# Saving to my Tidy2 folder in output #
ggsave(here("Output", "Tidy_2", "BobRoss_Tidy2.png"))
