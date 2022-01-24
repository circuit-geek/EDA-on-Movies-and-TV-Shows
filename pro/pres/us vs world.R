rm(list = ls())

setwd("G:\\5th Sem\\Data Analytics\\Project Files\\pro\\dataset")
getwd()
#__________________________import________________________________ 
data=read.csv("task7")
data=subset(data,select=-c(X))
library(dplyr)
library(ggplot2)

#_____________finding the mean world wide and us gross ______________
X=data%>%group_by(year)%>% summarise(mean_worlwide_gross_income = mean(worlwide_gross_income),mean_usa_gross_income = mean(usa_gross_income))
dim(X)
D=data.frame(year=NA,type=NA,value=NA)

for (i in 1:96){
  for(j in 1:2){
    f=data.frame(year=X[[1]][i],type=colnames(X[j+1]),value=X[[j+1]][i])
    D=rbind(f,D)
    
  }
}

#_____________________piloting comment_______________________

ggplot(D, aes(x=year, y=value, group=type)) +
  geom_line(aes( color=type))+
  geom_point(aes(color=type))+
  theme(legend.position="top")

