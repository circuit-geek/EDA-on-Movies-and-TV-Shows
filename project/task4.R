rm(list = ls())

setwd("E:/collage/5th sem/foundation  of data analytics/project/dataset")
getwd()
A=read.csv("country.csv")
B=read.csv("genre.csv")
h=subset(A,select=c(imdb_title_id,title,genre))
library(dplyr)
G=inner_join(A[1:177],B[1:29],by = "imdb_title_id")
G=subset(G,select=-c(X.y,title.y))

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
Ge=t
Ge


##country 
a=matrix(strsplit(G$country,"\\, |\\and|,|\\And| , |\\|"))

x=dim(a)

t=c(1:200)
t[1:200]="na"
d=1
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
rm(a)
n=1:25
a=matrix(NA,nrow=25,ncol=169)
for(j in 1:169){
  for (i in (1:25)){
    x1=subset(G,G[178+i]==Ge[i] &  G[4+j]==t[j],select = colnames(G[4+j]) )
    colnames(x1)=c(colnames(G[4+j]))
    x2=subset(G,G[178+i]==Ge[i] &  G[4+j]==t[j],select =colnames(G[178+i]) )
    colnames(x2)=c(colnames(G[178+i]))
    x=cbind(x2,x1)
    g=subset(G,G[178+i]==Ge[i] & G[4+j]==t[j],select=c(imdb_title_id,title.x,mean_vote))
    w=cbind(g,x)
    dim(w)
    a[i,j]=dim(w)[1]
    
  }
}

colnames(a)=t
rownames(a)=Ge

write.csv(a,"task4.csv", fileEncoding = 'UTF-8')
