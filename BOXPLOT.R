#https://www.youtube.com/watch?v=U64yNvlhv9I&list=PLqzoL9-eJTNAz0IuV1nAV7KMkGBf4QcQX&index=2

LungCapData <- read.table(file.choose(), sep="\t", header=T)

names(LungCapData)

class(LungCap)

class(Gender)

boxplot(LungCap)

quantile(LungCap, probs = c(0,0.25,0.5,0.75,1))

boxplot(LungCap,main = "Boxplot", 
        ylab = "Lung Capacity", 
        ylim = c(0,16),
        las = 1)

boxplot(LungCap ~ Gender)

boxplot(LungCap ~ Gender, main = "LungCap by Gender")

boxplot(LungCap[Gender == "female"], LungCap[Gender == "male"])
