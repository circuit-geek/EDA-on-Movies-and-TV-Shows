rm(list=ls())
setwd("G:\\5th Sem\\Data Analytics\\Project Files\\Imdb")

library(dplyr)
library(plyr)
library(stringr)
library(ggplot2)

#install.packages("plotrix")
library(plotrix)

df1 <- read.csv("IMDb movies.csv")
df2 <- select(df1, c(title, genre, year, country))
s1<-table(df2$country)
x1 <- as.data.frame(s1)
x2 <- filter(x1, Freq > 2000)

pie3D(x2$Freq, labels = x2$Var1, explode = 0.1, main = "Pie chart showing countries creating
      maximum contents")























class(s1)
