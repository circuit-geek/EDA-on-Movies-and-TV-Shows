rm(list = ls())
setwd("E:/collage/5th sem/foundation  of data analytics/project/dataset")
getwd()
A=read.csv("IMDb movies.csv")
B=read.csv("IMDb ratings.csv")
h=subset(A,select=c(imdb_title_id,title,genre))
library(dplyr)

a=matrix(strsplit(h$genre,"\\, |\\&|,|\\ | "))
h$ggenre=a
x=dim(a)
#genre
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
#sorting

x=dim(a)
wt=c(1:x[1])
wt[1:x[1]]=NA
Romance=wt  
Biography=wt 
Crime=wt 
Drama=wt 
History=wt 
Adventure=wt 
Fantasy=wt  
War=wt 
Mystery =wt 
Horror  =wt    
Western =wt     
Comedy=wt 
Family  =wt  
Action  =wt    
Sci_Fi   =wt 
Thriller  =wt  
Sport    =wt 
Animation =wt 
Musical  =wt 
Music     =wt 
Film_Noir =wt 
Adult=wt 
Documentary=wt 
Reality_TV =wt 
News=wt 

for (i in 1:x[1]){
  f=length(a[[i]])
  if(is.null(f))
    {f=1}
  
  for(j in 1:f){#1
    if("Romance" == a[[i]][j])
    {Romance[i]="Romance"}
    #2
    if("Biography" == a[[i]][j])
    {Biography[i]="Biography"}
    #3
    if("Crime" == a[[i]][j])
    {Crime[i]="Crime"}
    #4
    if("Drama" == a[[i]][j])
    {Drama[i]="Drama"}
    #5
    if("History" == a[[i]][j])
    {History[i]="History"}
    #6
    if("Adventure" == a[[i]][j])
    {Adventure[i]="Adventure"}
    
    #7
    if("Fantasy" == a[[i]][j])
    {Fantasy[i]="Fantasy"}
    #8
    if("War" == a[[i]][j])
    {War[i]="War"}
    #9
    if("Mystery" == a[[i]][j])
    {Mystery[i]="Mystery"}
    #10
    if("Horror" == a[[i]][j])
    {Horror[i]="Horror"}
    
    #11
    if("Western" == a[[i]][j])
    {Western[i]="Western"}
    
    #12
    if("Comedy" == a[[i]][j])
    {Comedy[i]="Comedy"}
    
    
    #13
    if("Family" == a[[i]][j])
    {Family[i]="Family"}
    #14
    if("Action" == a[[i]][j])
    {Action[i]="Action"}
    #15
    if("Sci-Fi" == a[[i]][j])
    {Sci_Fi[i]="Sci-Fi"}
    #16
    if("Thriller" == a[[i]][j])
    {Thriller[i]="Thriller"}
    #17
    if("Sport" == a[[i]][j])
    {Sport[i]="Sport"}
    #18
    if("Animation" == a[[i]][j])
    {Animation[i]="Animation"}
    #19
    if("Musical" == a[[i]][j])
    {Musical[i]="Musical"}
    #20
    if("Music" == a[[i]][j])
    {Music[i]="Music"}
    #21
    if("Film-Noir" == a[[i]][j])
    {Film_Noir[i]="Film-Noir"}
    #22
    if("Adult" == a[[i]][j])
    {Adult[i]="Adult"}
    #23
    if("Documentary" == a[[i]][j])
    {Documentary[i]="Documentary"}
    #24
    if("Reality-TV" == a[[i]][j])
    {Reality_TV[i]="Reality-TV"}
    #25
    if("News" == a[[i]][j])
    {News[i]="News"}
    
  }
  
}
cbind(h,romance)
#uploading


h$Romance=Romance  
h$Biography=Biography 
h$Crime=Crime 
h$Drama=Drama 
h$History=History 
h$Adventure=Adventure 
h$Fantasy=Fantasy  
h$War=War 
h$Mystery=Mystery
h$Horror=Horror    
h$Western=Western     
h$Comedy=Comedy 
h$Family=Family  
h$Action=Action    
h$Sci_Fi=Sci_Fi 
h$Thriller=Thriller 
h$Sport=Sport 
h$Animation=Animation 
h$Musical=Musical 
h$Music=Music 
h$Film_Noir=Film_Noir 
h$Adult=Adult 
h$Documentary=Documentary 
h$Reality_TV=Reality_TV
h$News=News

G=inner_join(h,B,by = "imdb_title_id")
g=subset(G,select=-c(ggenre))
write.csv(g,"genre.csv", fileEncoding = 'UTF-8')
