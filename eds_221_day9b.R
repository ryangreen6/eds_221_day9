

# Day 9 interactive session

library(reprex)
library(palmerpenguins)
library(tidyverse)

# reproducable examples! AKA reprex

# looking at error messages! Run the below line and see what you get in the console:

ggplot(data=penguins, aes(x=bill_length_mm, y=flipper_length_mm)) %>%
  geom_point()

head(penguins) # this will give you just the first few rows of a dataset
head(penguins, 10) # and this will give you the first 10 rows
head(penguins, 5)[,c('bill_length_mm', 'flipper_length_mm')] # now this will give you only the first 5 rows of the specified variables. 

# this below is a line that collects only the data you want from a larger dataset, where you can save it into a smaller dataframe. 

datapasta::df_paste(head(penguins, 5)[,c('bill_length_mm', 'flipper_length_mm')])
data.frame(
     bill_length_mm = c(39.1, 39.5, 40.3, NA, 36.7),
  flipper_length_mm = c(181L, 186L, 195L, NA, 193L)
)

# now storing it into a mini data set
# this is my REPREX! A small dataset that is easily copied and pasted to send to someone else, and is totally reproducable. 

my_data_frame <- data.frame(
     bill_length_mm = c(39.1, 39.5, 40.3, NA, 36.7),
  flipper_length_mm = c(181L, 186L, 195L, NA, 193L)
)

ggplot(data=my_data_frame, aes(x=bill_length_mm, y=flipper_length_mm)) +
         geom_point()































