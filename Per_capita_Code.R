```{r}
library(ggplot2)
library(dplyr)
library(tidyverse)

cities   <- read.csv("C:\\Users\\sarah\\Documents\\Econometrics\\final_project\\project.cities.csv")
counties <- read.csv("C:\\Users\\sarah\\Documents\\Econometrics\\final_project\\project.counties.csv")
zipcodes <- read.csv("C:\\Users\\sarah\\Documents\\Econometrics\\final_project\\project.zipcodes.csv")

#Do geographies with higher medium income consume more alcohol in total? 
#What about per capita? Does it depend on liquor category?

## Total Sales
cities.total.sales   <- cities %>% select(city, income, sale.dollars, sale.volume)
cities.total.sales   <- cities.total.sales %>%
  group_by(city) %>%
  summarize(total.sales.dollars = sum(sale.dollars), 
            total.sales.volume  = sum(sale.volume), 
            income              = median(income))

counties.total.sales <- counties %>% select(county, income, sale.dollars, sale.volume)
counties.total.sales <- counties.total.sales %>%
  group_by(county) %>%
  summarize(total.sales.dollars = sum(sale.dollars),
            total.sales.volume  = sum(sale.volume), 
            income              = median(income))

zipcodes.total.sales <- zipcodes %>% select(zipcode, income, sale.dollars, sale.volume)
zipcodes.total.sales <- zipcodes.total.sales %>%
  group_by(zipcode) %>%
  summarize(total.sales.dollars = sum(sale.dollars), 
            total.sales.volume  = sum(sale.volume), 
            income              = median(income))

## Income by geographies
# Cities, sale.dollar by income
ggplot(cities.total.sales, aes(x = income, y = total.sales.dollars)) +
  geom_point() +
  scale_y_log10()

# Cities, sale.volume by income
ggplot(cities.total.sales, aes(x = income, y = total.sales.volume)) +
  geom_point() +
  scale_y_log10()

# Counties, sale.dollar by income
ggplot(counties.total.sales, aes(x = income, y = total.sales.dollars)) +
  geom_point() +
  scale_y_log10()

# Counties, sale.volume by income
ggplot(counties.total.sales, aes(x = income, y = total.sales.volume)) +
  geom_point() +
  scale_y_log10()

# Zipcodes, sale.dollar by income
ggplot(zipcodes.total.sales, aes(x = income, y = total.sales.dollars)) +
  geom_point() +
  scale_y_log10()

# Zipcodes, sale.volume by income
ggplot(zipcodes.total.sales, aes(x = income, y = total.sales.volume)) +
  geom_point() +
  scale_y_log10()
```

```{r}
## Per capita
# Same thing, replace total sales var with total.sale/population
ggplot(cities.total.sales, aes(x = income, y = total.sales.dollars/population)) +
  geom_point() +
  scale_y_log10()

# Cities, sale.volume by income
ggplot(cities.total.sales, aes(x = income, y = total.sales.volume/population)) +
  geom_point() +
  scale_y_log10()

# Counties, sale.dollar by income
ggplot(counties.total.sales, aes(x = income, y = total.sales.dollars/population)) +
  geom_point() +
  scale_y_log10()

# Counties, sale.volume by income
ggplot(counties.total.sales, aes(x = income, y = total.sales.volume/population)) +
  geom_point() +
  scale_y_log10()

# Zipcodes, sale.dollar by income
ggplot(zipcodes.total.sales, aes(x = income, y = total.sales.dollars/population)) +
  geom_point() +
  scale_y_log10()

# Zipcodes, sale.volume by income
ggplot(zipcodes.total.sales, aes(x = income, y = total.sales.volume/population)) +
  geom_point() +
  scale_y_log10()
```
## Subcategory
# Color by subcategory
# filter by subcategory

ggplot(cities, aes(x = income, y = sale.dollars)) +
  geom_point() +
  scale_y_log10()
ggplot(cities, aes(x = income, y = sale.dollars, color = category)) +
  geom_point() +
  scale_y_log10()














