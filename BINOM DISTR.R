#https://www.youtube.com/watch?v=iG995W0XefU&list=PLqzoL9-eJTNAz0IuV1nAV7KMkGBf4QcQX&index=12

#Probability of exact value in binomial distr

dbinom(3, size = 20, prob = 1/6)

#multiple probs of exact values in binom distr

dbinom(0:3, size = 20, prob = 1/6)

#prob of less than 3

sum(dbinom(0:3, size = 20, prob = 1/6))
#or
pbinom(3, size = 20, prob = 1/6)

#get random sample for binom distr
rbinom(3, size = 20, prob = 1/6)

#find quantiles for binom distr
qbinom(0.8, size = 20, prob = 1/6)
