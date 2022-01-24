rm(list=ls())
setwd("G:\\5th Sem\\Data Analytics\\Project Files\\Imdb")

library(dplyr)
library(plyr)
library(stringr)
library(ggplot2)

#install.packages("plotrix")
library(plotrix)

df1 <- read.csv("IMDb movies.csv")
df2 <- select(df1, c(country,year ,avg_vote))
df3 <- filter(df2, country=="USA" & year == 2011)


ggplot() + geom_line(aes(y = df3$year, x = df3$avg_vote),
                     data = df3, stat="identity")

 
