rm(list=ls())
setwd("G:\\5th Sem\\Data Analytics\\Project Files\\Imdb")
setwd("G:\\5th Sem\\Data Analytics\\Project Files\\netflix_titles.csv")

library(dplyr)
library(plyr)

netflix_data = read.csv("netflix_titles.csv")
summary(netflix_data)

df1 <- netflix_data %>% group_by(rating)
df2 <- select(netflix_data, c(type ,title, rating))
x = sum(is.na(df2$title))
x1 = sum(is.na(df2$rating))
df3 <- mutate_all(df2, list(~na_if(.,"")))
y = unique(df3$rating)
length(y)
rating_count <- table(df3$type, df3$rating)
df5 <- as.data.frame.matrix(rating_count)
barplot(rating_count, main="Plot between No Of Movies and Shows with different Rating", 
        xlab = "Movie and TV Ratings" , beside = TRUE, col = c("yellow", "red"), 
        legend = rownames(rating_count))

