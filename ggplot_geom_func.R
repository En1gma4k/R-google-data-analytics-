library(ggplot2)
library(palmerpenguins)

#point geom
ggplot(data = penguins)+ geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g,shape = species, color = species))

#line geom
ggplot(data = penguins)+ geom_smooth(mapping = aes(x=flipper_length_mm,y=body_mass_g))

#line + points

ggplot(data = penguins)+ 
  geom_smooth(mapping = aes(x=flipper_length_mm,y=body_mass_g))+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g))

#different lines for diff species

ggplot(data = penguins)+
  geom_smooth(mapping = aes(x=flipper_length_mm,y=body_mass_g,linetype=species))

#barchart with diamonds data

ggplot(data = diamonds)+
  geom_bar(mapping = aes(x=cut))

#adding colors to the bars outline

ggplot(data = diamonds)+
  geom_bar(mapping = aes(x=cut,color=cut))

#filling the bar with color

ggplot(data = diamonds)+
  geom_bar(mapping = aes(x=cut,fill=cut))

#stacked bar chart(cut & clarity)

ggplot(data = diamonds)+
  geom_bar(mapping = aes(x=cut,fill=clarity))

#
