#---sales_Cities Graphs---
#-----------------------
City_Income <- sales_Cities  |>
  group_by(city)|>
  summary(meanIncome == mean(income)) 
  
print(sales_Cities) 


ggplot(City_Income, aes(x = income)) + 
  geom_histogram()

ggplot(sales_Cities, aes(x = high.school, y = income)) +
  geom_point()
  
ggplot(sales_Cities, aes(x = pop.black, y = income)) +
  geom_point()+
  scale_x_log10() 

by_median_income <- sales_Cities |>
  group_by(city) |>
  summary(medianIncome = median(income))

ggplot(by_median_income, aes(x = medianIncome)) +
  geom_histogram()
typeof(by_median_income)
integer(by_median_income)

#----------------------------
#--sales_Counties Data---------
#-----------------------------

ggplot(sales_Counties, aes(x = bachelor, y = income)) +
  geom_point()

ggplot(sales_Counties, aes( x = high.school, y = income))+
  geom_point() +
  scale_y_log10()

ggplot(sales_Counties, aes(x = population, y = income)) +
  geom_point()+
  geom_smooth(method=lm)+
  scale_x_log10()

ggplot(sales_Counties, aes(x = income))+
  geom_histogram()

#------------------------
#--sales_Zipcode-----------
#---

ggplot(sales_Zipcode, aes(x = population, y = income)) +
  geom_point()+
  geom_smooth(method=lm)+
  scale_x_log10()

