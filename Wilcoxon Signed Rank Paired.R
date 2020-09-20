#https://www.youtube.com/watch?v=zM8OZUM5I4Y&list=PLqzoL9-eJTNAz0IuV1nAV7KMkGBf4QcQX&index=37
#Wilcoxon Signed Rank Test (Dependent/Paired)

BloodPressure <- read.ble(file.choose(), header = T, sep = "\t")

attach(BloodPressure)

names(BloodPressure)

?wilcox.test

boxplot(Before, After)

#Ho: Median change is 0
#two-sided test
wilcox.test(Before, After, paired = T, conf.int = T, conf.level = 0.99)

#Approximates, no warning messages
wilcox.test(Before, After, paired = T, conf.int = T, conf.level = 0.99, exact = F)

#No continuity correction
wilcox.test(Before, After, paired = T, conf.int = T, conf.level = 0.99, exact = F, correct = F)