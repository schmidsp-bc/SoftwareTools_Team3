##### Data Merging #####
### ACS Data ###
acs.cities   <- read.csv("C:\\Users\\sarah\\Documents\\Econometrics\\final_project\\project.acs.cities.csv")
acs.counties <- read.csv("C:\\Users\\sarah\\Documents\\Econometrics\\final_project\\project.acs.counties.csv")
acs.zipcodes <- read.csv("C:\\Users\\sarah\\Documents\\Econometrics\\final_project\\project.acs.zipcodes.csv")

### Sales Data ### 
sales.cities   <- read.csv("C:\\Users\\sarah\\Documents\\Econometrics\\final_project\\project.sales.cities.csv")
sales.counties <- read.csv("C:\\Users\\sarah\\Documents\\Econometrics\\final_project\\project.sales.counties.csv")
sales.zipcodes <- read.csv("C:\\Users\\sarah\\Documents\\Econometrics\\final_project\\project.sales.zipcodes.csv")

library(dplyr)
cities   <- merge(acs.cities,   sales.cities,   by.x = "city",    by.y = "city",    all.x = TRUE, all.y = TRUE)
counties <- merge(acs.counties, sales.counties, by.x = "county",  by.y = "county",  all.x = TRUE, all.y = TRUE)
zipcodes <- merge(acs.zipcodes, sales.zipcodes, by.x = "zipcode", by.y = "zipcode", all.x = TRUE, all.y = TRUE)

write.csv(cities, "C:\\Users\\sarah\\Documents\\Econometrics\\final_project\\project.cities.csv", row.names=FALSE)
write.csv(counties, "C:\\Users\\sarah\\Documents\\Econometrics\\final_project\\project.counties.csv", row.names=FALSE)
write.csv(zipcodes, "C:\\Users\\sarah\\Documents\\Econometrics\\final_project\\project.zipcodes.csv", row.names=FALSE)
