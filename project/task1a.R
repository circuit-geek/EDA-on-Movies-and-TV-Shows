rm(list = ls())
library(dplyr)
G=read.csv("genre.csv")


Romance=filter(G,G[5]=="Romance")
Biography=filter(G,G[6]=="Biography")
Crime=filter(G,G[7]=="Crime") 
Drama=filter(G,G[8]=="Drama")
History=filter(G,G[9]=="History") 
Adventure=filter(G,G[10]=="Adventure")
Fantasy=filter(G,G[11]=="Fantasy")
War=filter(G,G[12]=="War")
Mystery =filter(G,G[13]=="Mystery") 
Horror=filter(G,G[14]=="Horror")    
Western=filter(G,G[15]=="Western")     
Comedy=filter(G,G[16]=="Comedy")
Family=filter(G,G[17]=="Family")  
Action=filter(G,G[18]=="Action")    
Sci_Fi=filter(G,G[19]=="Sci-Fi") 
Thriller=filter(G,G[20]=="Thriller")  
Sport=filter(G,G[21]=="Sport") 
Animation =filter(G,G[22]=="Animation") 
Musical  =filter(G,G[23]=="Musical") 
Music     =filter(G,G[24]=="Music")
Film_Noir =filter(G,G[25]=="Film-Noir") 
Adult=filter(G,G[26]=="Adult")
Documentary=filter(G,G[27]=="Documentary") 
Reality_TV =filter(G,G[28]=="Reality-TV") 
News=filter(G,G[29]=="News")


Romance=colMeans(Romance[30:77], na.rm=TRUE)  
Biography=colMeans(Biography [30:77], na.rm=TRUE)
Crime=colMeans(Crime [30:77], na.rm=TRUE)
Drama=colMeans(Drama [30:77], na.rm=TRUE)
History=colMeans(History [30:77], na.rm=TRUE)
Adventure=colMeans(Adventure [30:77], na.rm=TRUE)
Fantasy=colMeans(Fantasy [30:77], na.rm=TRUE) 
War=colMeans(War [30:77], na.rm=TRUE)
Mystery=colMeans(Mystery[30:77], na.rm=TRUE)
Horror=colMeans(Horror[30:77], na.rm=TRUE)    
Western=colMeans(Western [30:77], na.rm=TRUE)    
Comedy=colMeans(Comedy [30:77], na.rm=TRUE)
Family=colMeans(Family  [30:77], na.rm=TRUE)
Action=colMeans(Action[30:77], na.rm=TRUE)    
Sci_Fi=colMeans(Sci_Fi[30:77], na.rm=TRUE) 
Thriller=colMeans(Thriller[30:77], na.rm=TRUE) 
Sport=colMeans(Sport[30:77], na.rm=TRUE) 
Animation=colMeans(Animation[30:77], na.rm=TRUE) 
Musical=colMeans(Musical[30:77], na.rm=TRUE) 
Music=colMeans(Music [30:77], na.rm=TRUE)
Film_Noir=colMeans(Film_Noir[30:77], na.rm=TRUE) 
Adult=colMeans(Adult [30:77], na.rm=TRUE)
Documentary=colMeans(Documentary[30:77], na.rm=TRUE) 
Reality_TV=colMeans(Reality_TV[30:77], na.rm=TRUE)
News=colMeans(News[30:77], na.rm=TRUE)

h=data.frame(Romance)
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




library(clusterSim)
summary(h)


x=rbind(h[2,])
for(i in seq(15,48,by=2)){
  g=h[i+1,]/h[i,]
  row.names(g)=rownames(h[i,])
  x=rbind(x,g)
}


write.csv(x,"genre3.csv", fileEncoding = 'UTF-8',)

n4
h2=data.Normalization (h,type="n1",normalization="row")
