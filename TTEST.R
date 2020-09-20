#https://www.youtube.com/watch?v=kvmSAXhX9Hs&list=PLqzoL9-eJTNAz0IuV1nAV7KMkGBf4QcQX&index=27
#One Sample t-test and Conf Interval
LungCapData <- read.table(file.choose(), header = T, sep= "\t")
attach(LungCapData)

names(LungCapData)
class(LungCap)

?t.test

boxplot(LungCap)

mean(LungCap)

#HoL mu < 8
#one-sided 95% conf interval for mu 

t.test(LungCap, mu = 8, alt = "less", conf = 0.95)

#two-sided

t.test(LungCap, mu = 8, alt = "two.sided", conf = 0.95)

#two-sided is default in R
t.test(LungCap, mu = 8, conf = 0.95)

#two-sided 99% conf interval
t.test(LungCap, mu = 8, conf = 0.99)

#storing value in obj

ttest <- t.test(LungCap, mu = 8, conf = 0.95)

ttest
#attributes of obj
attributes(ttest)

#extract attributes from obj
ttest$p.value
