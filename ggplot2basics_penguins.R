library(ggplot2)
library(palmerpenguins)

#loading and viewing dataset
data("penguins")
View(penguins)

#creating viz using ggplot

ggplot(data=penguins)+geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g))

