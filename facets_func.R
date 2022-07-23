library(ggplot2)
library(palmerpenguins)

#facet using single var/penguins dataset

ggplot(data = penguins)+
  geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  facet_wrap(~species)

#for diamonds df

ggplot(data = diamonds)+
  geom_bar(mapping = aes(x=color,fill=cut))+
  facet_wrap(~cut)

#face using 2 variables/penguins df

ggplot(data = penguins)+
  geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  facet_grid(sex~species)
