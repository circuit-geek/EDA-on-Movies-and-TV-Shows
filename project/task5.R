rm(list = ls())

setwd("E:/collage/5th sem/foundation  of data analytics/project/dataset")
getwd()

A=read.csv("genre.csv")
B=read.csv("IMDb movies.csv")

library(dplyr)

B=subset(B,select=c(year,duration,imdb_title_id))
G=inner_join(B,A[1:34],by = "imdb_title_id")

#genre

a=matrix(strsplit(G$genre,"\\, |\\&|,|\\ | "))
x=dim(a)
t=c(1:10)
t[1:10]="na"
d=1
for (i in 1:x[1]){
  f=length(a[[i]])
  if(is.null(f))
  {f=1}
  
  for(j in 1:f){
    for(k in 1:10)
    {
      if(a[[i]][j]== t[k]){
        next
      }
      else{
        t[d]=a[[i]][j]
        d=d+1
      }
    }
    
  }
}

t=unique(t)
t

x=unique(G[1])
for(j in 1:113){
  for(i in 1:25){
    k=subset(G,G[i+6]==t[i] & G[1]==x[j],select=c(mean_vote,year))
    
    r=dim(k)
    r
    
             }
}

