rm(list = ls())
#__________________________import________________________________ 

setwd("G:\\5th Sem\\Data Analytics\\Project Files\\pro\\dataset")
getwd()

library(dplyr)
library(ggplot2)
X=read.csv("yearvsgener.csv")
# _________________filtering  the comedy and drama _________________ 

C=X%>%filter(gener!="Drama")%>%filter(  gener!="Comedy" )

ggplot(X, aes(x=year, y=total, group=gener)) +
  geom_line(aes( color=gener))+
  geom_point(aes(color=gener))+
  theme(legend.position="top")

ggplot(C, aes(x=year, y=total, group=gener)) +
  geom_line(aes( color=gener))+
  geom_point(aes(color=gener))+
  theme(legend.position="top")
