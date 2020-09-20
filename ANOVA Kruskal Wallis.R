#https://www.youtube.com/watch?v=lpdFr5SZR0Q&list=PLqzoL9-eJTNAz0IuV1nAV7KMkGBf4QcQX&index=52
#ANOVA Kruskal Wallis

DietData <- read.table(file.choose(), header = T, sep = "\t")

attach(DietData)
names(DietData)
str(DietData)

boxplot(WeightLoss~Diet)

#Ho: Mean weight loss is the same for all diets
aov(WeightLoss~Diet)
#Reject Ho

ANOVA1 <- aov(WeightLoss~Diet)

summary(ANOVA1)

attributes(ANOVA1)

#Extract atttributes
ANOVA1$residuals

#Multiple pair-wise comparisons
TukeyHSD(ANOVA1)

plot(TukeyHSD(ANOVA1), las = 1)

#Kruskal Wallis non-parametric equivalent to one-way ANOVA

kruskal.test(WeightLoss ~ Diet)
#Reject Ho