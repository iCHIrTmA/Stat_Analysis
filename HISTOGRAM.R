#https://www.youtube.com/watch?v=Hj1pgap4UOY&list=PLqzoL9-eJTNAz0IuV1nAV7KMkGBf4QcQX&index=5
LungCapData <- read.table(file.choose(), sep="\t", header=T)

hist(LungCapData$LungCap)

#change y from freq to prob, density, prop

hist(LungCapData$LungCap, freq = F)

#or

hist(LungCapData$LungCap, prob = T)

#change y limit to 0.20

hist(LungCapData$LungCap, prob = T, ylim = c(0,0.2))

#change binwidth

hist(LungCapData$LungCap, prob = T, ylim = c(0,0.2), breaks = 7)

hist(LungCapData$LungCap, prob = T, ylim = c(0,0.2), breaks = 14)
#more breaks intervals get smaller

#change breakpoints themselves

hist(LungCapData$LungCap, prob = T, ylim = c(0,0.2), breaks = c(0,2,4,6,8,10,12,14,16,18))
#use seq command

hist(LungCapData$LungCap, prob = T, ylim = c(0,0.2), breaks = seq(0, 16, 2))

#add title and labels
hist(LungCapData$LungCap, prob = T, ylim = c(0,0.2), breaks = seq(0, 16, 2),
     main = "Histogram of Lung Capacity",
     xlab= "Lung Capacity",
     las = 1)#las = 1  horizontal, las = 2 vertical

#add density curve
lines(density(LungCapData$LungCap))

#change density line color and width
lines(density(LungCapData$LungCap), col = 2, lwd = 3)
  