#https://www.youtube.com/watch?v=KroKhtCD9eE&list=PLqzoL9-eJTNAz0IuV1nAV7KMkGBf4QcQX&index=41
#Wilcoxon Rank-Sum Test (Independent) or Mann Whitney

LungCapData <- read.table(file.choose(), header = T, sep= "\t")
attach(LungCapData)

names(LungCapData)

?wilcox.test

boxplot(LungCap~Smoke)

#Ho: Median LungCAp of Smokers = Median LungCap of NON-Smokers
#two-sided test
wilcox.test(LungCap~Smoke, mu = 0, paired = F, conf.int = T, conf.level = 0.95, exact = T, correct = T)

#Omit default values(mu = 0, paired = F, conf.level  = 0.95, exact = T, correct = T)
wilcox.test(LungCap~Smoke, conf.int = T) #same output as previous code

#Approximates, no warning messages, not exact value
wilcox.test(LungCap~Smoke, paired = F, conf.int = T, conf.level = 0.95, exact = F, correct = F)
