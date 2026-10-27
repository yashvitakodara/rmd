library(tidyverse)
library(ggplot2)
?airquality
View(airquality)
ncol(airquality)
nrow(airquality)
if(airquality$Ozone[1]>50){
  print("ok")
}
if(airquality$Ozone[1]>50){
  print("ok")
}else{
  print("not ok")
}
aqi<-airquality %>%select("Ozone","Wind","Temp")
View(aqi)
mean(airquality$Month)
aqi2<-airquality %>% filter(Day=="2")
View(aqi2)
#
library(ggplot2)
?geom_bar()
library(ggplot2)

ggplot(data = airquality, mapping = aes(x = Day, y = Wind)) +
  geom_col(fill="grey")





