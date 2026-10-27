#pokemon
install.packages("pokemon")
library(dplyr)
library(pokemon)
data(pokemon)
?pokemon
View(pokemon)
p1<-pokemon %>%select("pokemon","height","weight")
View(p1)
pokemon %>% filter(egg_group_2=="plant")->p2
View(p2)
p3<-pokemon %>%select("weight","speed","egg_group_1") %>% filter(egg_group_1=="fairy")
View(p3)
ncol(pokemon)
nrow(pokemon)
nrow(p2)

library(ggplot2)
#tabulation of categorical columns
library(tidyverse)
table(pokemon$type_1)
table(pokemon$generation_id)
#min max
min(pokemon$hp)
max(pokemon$hp)
min(pokemon$weight)
max(pokemon$weight)
#find null values
is.na(pokemon$type_2)
