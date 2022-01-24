rm(list = ls())

G=read.csv("country.csv")
library(dplyr)

for (i in 1:169){
  g=subset(G,(G[4+i]==t[i])&total_votes>=100,select = colnames(G[4+i]))
  colnames(g)="country"
  X=subset(G,(G[4+i]==t[i]) & total_votes>=100,select = c(imdb_title_id,title,mean_vote))
  X=arrange(X,-mean_vote)
  dim(X)
  X=cbind(X,g)
  X=head(X,10)
  F=rbind(X,F)
  
}
write.csv(F,"country1.csv", fileEncoding = 'UTF-8',)
