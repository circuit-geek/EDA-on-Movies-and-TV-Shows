rm(list = ls())
setwd("E:/collage/5th sem/foundation  of data analytics/project/dataset")
getwd()
B=read.csv("IMDb movies.csv")
library(dplyr)
B=subset(B,select=c(imdb_title_id,usa_gross_income,worlwide_gross_income))

