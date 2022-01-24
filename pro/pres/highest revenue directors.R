rm(list = ls())

setwd("G:\\5th Sem\\Data Analytics\\Project Files\\pro\\dataset")
getwd()

#__________________________import________________________________ 

#install.packages("libr")

library(dplyr)
library(ggplot2)
library(libr)

director=read.csv("task6a.csv")
B=read.csv("IMDb names.csv")

#________________currency conversion___________________ 

dataframe2 <- datastep(director, {
  if (worlwide_gross_income...9=="$ ")
    ConvertedAmount <- worlwide_gross_income...8
  else if (worlwide_gross_income...9 == "NPR ")
    ConvertedAmount <- worlwide_gross_income...8 * 0.0084
  else if (worlwide_gross_income...9 == "PKR ")
    ConvertedAmount <- worlwide_gross_income...8 * 0.0059
  else if (worlwide_gross_income...9 == "INR ")
    ConvertedAmount <- worlwide_gross_income...8 * 0.014
  else if (worlwide_gross_income...9 == "GBP ")
    ConvertedAmount <- worlwide_gross_income...8 * 1.35
  
})


director= subset(dataframe2,select=-c(worlwide_gross_income...9,worlwide_gross_income...10))


director= arrange(director,select=-c(ConvertedAmount))
dec=head(director,10)
dec=inner_join(dec,B,by = "imdb_name_id")


dec=subset(dec,select = c(name,ConvertedAmount))


barplot(dec[[2]],names.arg=dec[[1]],xlab="director name",ylab="Revenue",col="blue",main="Revenue chart",border="red")
