#https://www.youtube.com/watch?v=yD6aU0fY2lo&list=PLqzoL9-eJTNAz0IuV1nAV7KMkGBf4QcQX&index=36
#Paired T-test

BloodPressure <- read.table(file.choose(), header = T, sep = "\t")

attach(BloodPressure)

boxplot(Before, After)

plot(Before, After)
abline(0,1)


#Paired T-test, 99% confidence

t.test(Before, After, paired = T, conf.level = 0.99)

