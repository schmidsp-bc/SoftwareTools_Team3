library(ggplot2)
library(dplyr)
install.packages("dplyr")
install.packages("tidyverse")
install.packages("ggplot2")

#-----------------------
#---ACS_Cities Graphs---
#-----------------------
City_Income <- ACS_Cities  |>
  group_by(city)|>
  summary(meanIncome == mean(income)) 
  
print(ACS_Cities) 


ggplot(City_Income, aes(x = income)) + 
  geom_histogram()

ggplot(ACS_Cities, aes(x = high.school, y = income)) +
  geom_point()
  
ggplot(ACS_Cities, aes(x = pop.black, y = income)) +
  geom_point()+
  scale_x_log10() 

by_median_income <- ACS_Cities |>
  group_by(city) |>
  summary(medianIncome = median(income))

ggplot(by_median_income, aes(x = medianIncome)) +
  geom_histogram()
typeof(by_median_income)
integer(by_median_income)

#----------------------------
#--ACS_Counties Data---------
#-----------------------------

ggplot(ACS_Counties, aes(x = bachelor, y = income)) +
  geom_point()

ggplot(ACS_Counties, aes( x = high.school, y = income))+
  geom_point() +
  scale_y_log10()

ggplot(ACS_Counties, aes(x = population, y = income)) +
  geom_point()+
  geom_smooth(method=lm)+
  scale_x_log10()

ggplot(ACS_Counties, aes(x = income))+
  geom_histogram()

#------------------------
#--ACS_Zipcode-----------
#---

ggplot(ACS_Zipcode, aes(x = population, y = income)) +
  geom_point()+
  geom_smooth(method=lm)+
  scale_x_log10()
