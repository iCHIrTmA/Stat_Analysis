# https://www.youtube.com/watch?v=V_YNPQoAyCc&list=PLqzoL9-eJTNAz0IuV1nAV7KMkGBf4QcQX&index=56
# Odds Ratio, Rel Risk, Risk Diff
LungCapData <- read.table(file.choose(), header = T, sep = "\t")
attach(LungCapData)

str(LungCapData)

TAB <- table(Gender, Smoke)

barplot(TAB, beside = T, legend = T)
install.packages("epiR")

library("epiR")
epi.2by2(TAB, method = "cohort.count")#method = case.control if case control study

#change contin table to standard abcd format
TAB2 <- matrix(c(44, 314, 33, 334), nrow = 2, byrow = T)
TAB2

#using cbind to reverse order of col1 and col2
TAB3 <- cbind(TAB[,2], TAB[,1])
TAB3
colnames(TAB3) <- c("yes", "no")
TAB3
epi.2by2(TAB3, method = "cohort.count")

