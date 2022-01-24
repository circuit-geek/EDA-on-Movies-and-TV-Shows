rm(list = ls())
setwd("E:/collage/5th sem/foundation  of data analytics/project/dataset")
getwd()

A=read.csv("IMDb movies.csv")
B=read.csv("IMDb ratings.csv")
h=subset(A,select=c(imdb_title_id,title,country),na.rm=TRUE)
library(dplyr)

d=subset()
a=matrix(strsplit(h$country,"\\, |\\And| , |\\|"))
h$countrylist=a

x=dim(a)
a=unique(a)
#genre
t=c(1:200)
t[1:200]="na"
d=1

a[[2815]][1]="USA"

for (i in 1:x[1]){
  f=length(a[[i]])
  if(is.null(f))
  {f=1}
  
  for(j in 1:f){
    for(k in 1:10)
    {
      if(a[[i]][j]==t[k]){
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
#sorting

l=length(t)
for (i in 1:l)
{
  y=c(1:85855)
  y[1:85855]=NA
  for (j in 1:85855)
  {
    x=h[[4]][j]
    d=dim(x)
    if(is.null(d)){
      d=1
    }
    
    for (k in 1:d){
      if (is.na(x[[1]][k])){next}

      if(t[i]==x[[1]][k])
        {y[j]=t[i]}
    }
  }
  h$f = y
  colnames(h)[4+i] =t[i]
}

#uploading
G=inner_join(h,B,by = "imdb_title_id")

g=subset(G,select=-c(countrylist))

write.csv(g,"country.csv", fileEncoding = 'UTF-8')
