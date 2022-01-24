rm(list = ls())
setwd("E:/collage/5th sem/foundation  of data analytics/project/dataset")
getwd()
A=read.csv("IMDb movies.csv")
B=read.csv("IMDb ratings.csv")
library(dplyr)

x=seq(16,48, by=2)
for (i in x){
  f=colnames(B[i])
  g=c(1:10)
  g[1:10]=f
  g=data.frame(g)
  colnames(g)="country"
  X=arrange(B,-B[[i]])
  X=head(X,10)
  X=cbind(X,g)
  
  F=rbind(X,F)
}
F[4]

for(i in 1:169){
  w=subset(G,(G[4+i]==t[i]),h)
}
unique(F[4])

write.csv(F,"top 10 with age and gender.csv", fileEncoding = 'UTF-8',)
