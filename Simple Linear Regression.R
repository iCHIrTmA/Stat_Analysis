# https://www.youtube.com/watch?v=66z_MRwtFJM&list=PLqzoL9-eJTNAz0IuV1nAV7KMkGBf4QcQX&index=61
# Simple Linear Regression

LungCapData <- read.table(file.choose(), header = T, sep = "\t")
attach(LungCapData)

plot(Age, LungCap, main = "Scatterplot")

#Regresion Line
?lm
regress.line <- lm(LungCap ~ Age)

summary(regress.line)

#Extract attributes
attributes(regress.line)
regress.line$coefficients

#Add regression line to plot
plot(Age, LungCap, main = "Scatterplot")
abline(regress.line, col = 2, lwd = 3)

#Change conf.level of regression line
confint(regress.line, level = 0.99)

#Produce ANOVA table
anova(regress.line) #pertain to f-test of regression
