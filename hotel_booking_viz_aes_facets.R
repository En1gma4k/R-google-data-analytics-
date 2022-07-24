library(tidyr)
library(ggplot2)
library(readr)

hotel_bookings <- read_csv("C:/Users/milan/Desktop/Studies/Google Data Analytics Certificate/R/Datasets/hotel_bookings.csv")
head(hotel_bookings)
colnames(hotel_bookings)

#distribution channels bar graph

ggplot(data = hotel_bookings)+
  geom_bar(mapping = aes(x=distribution_channel,fill=distribution_channel))

#checking deposit_type for each distribution

ggplot(data = hotel_bookings)+
  geom_bar(mapping = aes(x=distribution_channel,fill=deposit_type))
 
#checking market segment for each distribution type

ggplot(data = hotel_bookings)+
  geom_bar(mapping = aes(x=distribution_channel,fill=market_segment))

#using facet to show deposit type

ggplot(data = hotel_bookings)+
  geom_bar(mapping = aes(x=distribution_channel,fill=distribution_channel))+
  facet_wrap(~deposit_type)

#using facet to show market segment

ggplot(data = hotel_bookings)+
  geom_bar(mapping = aes(x=distribution_channel,fill=distribution_channel))+
  facet_wrap(~market_segment)

#creating a plot with rotated labels

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~deposit_type) +
  theme(axis.text.x = element_text(angle = 45))

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~market_segment) +
  theme(axis.text.x = element_text(angle = 45))

#creating plot for both market segment & deposit type using facet_wrap

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~deposit_type~market_segment) +
  theme(axis.text.x = element_text(angle = 45))
