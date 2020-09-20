#https://www.youtube.com/watch?v=ETd-jPhI_tE&list=PLqzoL9-eJTNAz0IuV1nAV7KMkGBf4QcQX&index=21
#T Distr

#t-stat = 2.3, df = 25
#one-sided p-value
#P(t > 2.3)
pt(2.3, df = 25, lower.tail = F)

#two-sided pvalue
pt(2.3, df = 25, lower.tail = F)  + pt(-2.3, df = 25,)
#or
pt(2.3, df = 25, lower.tail = F)*2

#confidence intervals
#find t for 95% confidene
#value of t with 2.5% in each tail

qt(0.025, df = 25)
