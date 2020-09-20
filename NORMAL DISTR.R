#https://www.youtube.com/watch?v=peEsXbdMY_4&list=PLqzoL9-eJTNAz0IuV1nAV7KMkGBf4QcQX&index=14
#Probability in Normal Distr

#Assume is x is normally distributed with mean = 75 and sd = 5

#Prob of less than or equal to 70(i.e x<=70)
pnorm(70, mean = 75, sd = 5)

#Prob of greater than or equal to 85(i.e x>=85)
pnorm(85, mean = 75, sd = 5, lower.tail = F)

#Prob for z - score
#Ex (z >= 1)
pnorm(1, mean = 0, sd = 1, lower.tail = F)

#Compute percentiles or quantiles

#Compute 1st Quartile or Q1
qnorm(0.25, mean = 75, sd = 5)

#Probability density
x <- seq(from = 55, to = 95, by = 0.25)

dens <- dnorm(x, mean = 75, sd = 5)

plot(x, dens)

#add a line

plot(x, dens, type = "l")

#add titles, labels
plot(x, dens, type = "l",
     main = "X ~ Normal: Mean = 75 SD = 5",
     ylab = "Probability Density",
     las = 1)

#add line
abline(v = 75)

#draw random sample
rand <- rnorm(40, mean = 75, sd = 5)

rand

hist(rand) #can be both normal and not normals, depends on chance
