library(tidyverse)
library(skimr)
library(janitor)

hotel_bookings <- read_csv("C:/Users/milan/Desktop/Studies/Google Data Analytics Certificate/R/Datasets/hotel_bookings.csv")
head(hotel_bookings)
glimpse(hotel_bookings)
colnames(hotel_bookings)

#arrange data by most lead times

hotel_bookings_leadtime_desc<-arrange(hotel_bookings,-lead_time)
head(hotel_bookings_leadtime_desc)

#finding max & min lead times

max(hotel_bookings$lead_time)
min(hotel_bookings$lead_time)

#average lead time

mean(booking_df$lead_time)

#filter by hotel type: City Hotel

City_Hotel_bookings<-filter(hotel_bookings,hotel_bookings$hotel=="City Hotel")
head(City_Hotel_bookings)

mean(City_Hotel_bookings$lead_time)

#hotels summary
hotel_summary<-
  hotel_bookings %>% 
  group_by(hotel) %>% 
  summarise(average_lead_time=mean(lead_time),
            min_lead_time=min(lead_time),
            max_lead_time=max(lead_time))
head(hotel_summary)
