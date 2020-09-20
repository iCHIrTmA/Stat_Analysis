#https://www.youtube.com/watch?v=ACWuV16tdhY&list=PLqzoL9-eJTNAz0IuV1nAV7KMkGBf4QcQX&index=10
LungCapData <- read.table(file.choose(), sep="\t", header=T)


summary(LungCapData)

#Smoker freq

table(LungCapData$Smoke)

#as proportion

table(LungCapData$Smoke) / length(LungCapData$Smoke)

#Contingency table

table(LungCapData$Smoke, LungCapData$Gender)

#Numeric var

mean(LungCapData$LungCap)

#trimmed mean

mean(LungCapData$LungCap, trim = 0.10)

median(LungCapData$LungCap)

var(LungCapData$LungCap)

sd(LungCapData$LungCap)

min(LungCapData$LungCap)

max(LungCapData$LungCap)

range(LungCapData$LungCap)

quantile(LungCapData$LungCap, probs = c(0.2,0.5,0.9,1))

sum(LungCapData$LungCap)         

#Pearson correlation

cor(LungCapData$LungCap, LungCapData$Age)

#Spearman correlation

cor(LungCapData$LungCap, LungCapData$Age, method = "spearman")

# covariance

cov(LungCapData$LungCap, LungCapData$Age)

summary(LungCapData$LungCap)

summary(LungCapData$Smoke)

summary(LungCapData)
