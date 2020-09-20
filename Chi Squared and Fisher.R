#https://www.youtube.com/watch?v=POiHEJqmiC0&list=PLqzoL9-eJTNAz0IuV1nAV7KMkGBf4QcQX&index=54
#Chi-Square Test and Fisher Exact
LungCapData <- read.table(file.choose(), header = T, sep = "\t")
attach(LungCapData)

str(LungCapData)

#Produce contingency table

table(Gender, Smoke)

TAB <- table(Gender, Smoke)

#Barplots
barplot(TAB, beside = T, legend = T)

#Chi-Square
chisq.test(TAB, correct = T) #correct = t Yates continuity

CHI <- chisq.test(TAB, correct = T)

attributes(CHI)
CHI$expected

#Fisher Exact (non-parametric)
fisher.test(TAB, conf.int = T, conf.level = 0.99) #default are conf.level .95, conf.int = F
