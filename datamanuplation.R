a<-read.csv("C:/users/yashv/Downloads//sample_dataframe.csv")
View(a)
library(dplyr)
print(a$Customer_Name)
print(a[["Customer_Name"]])
#make and view database of selected columns
a %>% select("Transaction_ID","Product_Category","Order_Date") ->L1
View(L1)
l2<- a %>%select("Payment_Method","Total_Amount")
View(l2)
p<-a %>%select(starts_with("T"))
View(p)


#filter and view selected rows
f<-a %>%filter( Payment_Method=="Credit Card")
View(f)
f2 <- a %>%filter(Product_Category=="Home & Garden")
View(f2)
View(a)
#Select and Filter
snf<- a %>%select("Customer_Name","Product_Name") %>% filter(Product_Name=="LED Desk Lamp")
View(snf)
#gglot2(datavisualisation)#diamonds
install.packages("ggplot2")
library(ggplot2)
View(diamonds)
d<- diamonds %>%select("carat")
View(d)
e<- diamonds %>%select("cut","clarity","depth") %>% filter(cut=="Good",clarity=="VS1")
View(e)

#diamonds datavisualisation

install.packages("tidyverse")
library(tidyverse)
library(ggplot2)
#bod
View(BOD)
?BOD
ggplot(data=BOD, mapping=aes(x=Time,y=demand))+geom_point(shape=8,color="red")+geom_line(color="pink")
ggplot(data=BOD, mapping=aes(demand,Time))+geom_point()+geom_line()
#co2
?CO2
View(CO2)
ggplot(data = CO2,mapping=aes(conc,uptake))+geom_point(shape=6)+geom_smooth()

#diamonds:
library(ggplot2)
View(diamonds)

#histogram
ggplot(data=diamonds, mapping = aes(x=price))+geom_histogram(fill = "blue",col="black")
#bar
ggplot(data=diamonds,mapping = aes(x=price))+geom_bar()
ggplot(data=diamonds,mapping = aes(x=price))+geom_bar(fill="cyan")
ggplot(data=diamonds,mapping = aes(x=price, fill=cut))+geom_bar()
#scatter plot
ggplot(data=diamonds,mapping = aes(carat,price))+geom_point()
ggplot(data=diamonds,mapping = aes(carat,price, col=cut))+geom_point()
#boxplot
ggplot(data = diamonds, mapping = aes(clarity, carat, col=cut)) + geom_boxplot()


