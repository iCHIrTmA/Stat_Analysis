# https://www.youtube.com/watch?v=XaNKst8ODEQ&list=PLqzoL9-eJTNAz0IuV1nAV7KMkGBf4QcQX&index=60
# Correlations and Covariance
LungCapData <- read.table(file.choose(), header = T, sep = "\t")
attach(LungCapData)

plot(Age, LungCap, main = "Scatterplot", las = 1)

#Pearson Correlation default
cor(Age, LungCap) #can be interchanged cor(LungCap, Age)

#Spearman
cor(Age, LungCap, method = "spearman")

#Kendall
cor(Age, LungCap, method = "kendall")

#Test Details
cor.test(Age, LungCap) #same for spearman and kendall

cor.test(Age, LungCap, method = "spearman") #Warning message because some obs have same values

cor.test(Age, LungCap, method = "spearman", exact = F)

#Change Alt Hyp and Conf level
cor.test(Age, LungCap, alt = "greater", conf.level = 0.99)

#Covariance
cov(Age, LungCap)

#Pairwise plots
pairs(LungCapData)

pairs(LungCapData[,1:3])#Subsetting

#Correlation matrix
cor(LungCapData[,1:3]) #cor() works only for numeric 
cor(LungCapData[,1:3], method = "spearman")

#Covariance matrix
cov(LungCapData[,1:3])
