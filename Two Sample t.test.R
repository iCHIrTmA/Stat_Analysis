#https://www.youtube.com/watch?v=RlhnNbPZC0A&list=PLqzoL9-eJTNAz0IuV1nAV7KMkGBf4QcQX&index=40
#Independent Two-Sample T-Test

LungCapData <- read.table(file.choose(), header = T, sep= "\t")
attach(LungCapData)

str(LungCapData)

boxplot(LungCap ~Smoke)
#Ho: mean lung cap of smokers == mean lung cap of non-smoker

#two-sided t.test; assume non-equal variances

t.test(LungCap~Smoke, mu = 0, conf = 0.95, var.eq = F)

#default values of t.test: mu = 0, conf = 0.95, var.eq = F, alt = two.sided, paired = F
#no need to specify if using default value

t.test(LungCap~Smoke) #same output

#We could also use indexing

t.test(LungCap[Smoke=="no"], LungCap[Smoke=="yes"]) #same output

#If assuming equal variance

t.test(LungCap~Smoke, var.eq = T)

#Check if groups have equal or non-equal variance

#1. boxplot
boxplot(LungCap~Smoke)

#2. variance func
var(LungCap[Smoke=="yes"])
var(LungCap[Smoke=="no"])

var(LungCap[Smoke=="no"]) > var(LungCap[Smoke=="yes"])

#3. Levene's Test
#Ho: Pop var are equal
install.packages("car")
library(car)
leveneTest(LungCap~Smoke)
#Small Pr(>F) 0.0003408 
#Reject Ho pop var are equal, Accept Ha: pop var are NOT equal
