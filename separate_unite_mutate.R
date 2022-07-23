id <- c(1:10)

name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia")

job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")

employee <- data.frame(id, name, job_title)

employee

#seperate 1 col into 2 cols
employee_new <- separate(employee, name, into=c('first_name','last_name'), sep=' ')
employee_new

#combining 2 cols into 1 cols

employee_new2 <- unite(employee_new, 'name', first_name,last_name, sep = ' ')
employee_new2

#adding cols with calculations

library(palmerpenguins)
view(penguins)

penguins %>% 
  mutate(body_mass_kg=body_mass_g/1000, flipper_length_m=flipper_length_mm/1000)
