rm(list=ls())
setwd("G:\\5th Sem\\Data Analytics\\Project Files\\Imdb")

data = read.csv("OTT-Movies.csv")

library(dplyr)
library(plyr)
library(mice)

df1 <- select(data, c("Title", "IMDb", "Netflix", "Hulu", "Prime.Video", "Disney."))
df2 <- df1 %>% filter(IMDb >= "8.0/10")
write.csv(df2, "filteredOTT.csv", row.names = FALSE)

a <- table(df2$Netflix)
b <- table(df2$Hulu)
c <- table(df2$Prime.Video)
d <- table(df2$Disney.)

#barplot(, main = "Netflix Count", xlab = "Rating", ylab = "Count",
        #border = "yellow", col = "red", density = 10 )

# 
# df3 <- select(data, c("Age", "Netflix", "Hulu", "Prime.Video", "Disney."))
# df4 <- df3 %>% filter(Age < "18+")
# summary(df4)
# md.pattern(df4)
# 
# df5 <- df4
# df5[df5 == ""] <- NA 

#numeric_data <- as.data.frame(apply(df5, 2 ,as.numeric))
#sapply(numeric_data, class)

# x <- count(df5, 'Age')
# write.csv(df5, "filteredOTT-2.csv", row.names = FALSE)
# 
# df6 <- select(data, c("Year", "Netflix", "Hulu", "Prime.Video", "Disney."))
# df6 <- df6 %>% filter(Year > 2019)
# data_matrix <- matrix(data = df6, nrow = 5, ncol = 1189)
# heatmap(data_matrix)
# summary(df6)
