install.packages("here")
install.packages("skimr")
install.packages("janitor")
library(here)
library(skimr)
library(janitor)
library(dplyr)
library(tidyverse)

booking_df

head(booking_df)

str(booking_df)

trimmed_df <- booking_df%>% 
  select('hotel','is_canceled','lead_time')

stats_df <- booking_df %>% 
  summarise(number_canceled = sum(is_canceled), average_lead_time = mean(lead_time))
stats_df  
