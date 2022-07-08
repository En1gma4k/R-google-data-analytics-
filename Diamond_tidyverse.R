#loading library
library(tidyverse)
#viewing data str(diamonds), glimpse(diamonds), colnames(diamonds)
head(diamonds) 
colnames(diamonds)
#cleaning data
rename(diamonds, carat_new = carat)
summarise(diamonds, mean_carat = mean(carat))
#visualizing data
ggplot(data = diamonds, aes(x = carat, y = price, color = cut)) + geom_point() + facet_wrap(~cut)

