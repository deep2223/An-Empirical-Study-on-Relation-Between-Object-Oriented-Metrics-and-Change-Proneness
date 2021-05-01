library(Hmisc)
library(corrplot)
library(caTools)
setwd("C:/Users/hp-pc/Downloads/SOEN6611_Team7-master/CodeMR_Tool/Intellij")
version1<- read.csv("intellij-2019.csv", header = T)
head(version1)
version1[is.na(version1)] <- 0

version1 <- version1[,6:21]
head(version1)

model <- lm(formula = MI~LOC ,data = version1,method = "qr")
