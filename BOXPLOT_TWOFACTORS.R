#https://www.youtube.com/watch?v=s7ljwAzB5dQ&list=PLqzoL9-eJTNAz0IuV1nAV7KMkGBf4QcQX&index=4&t=0s
LungCapData <- read.table(file.choose(), sep="\t", header=T)
#Creat AgeGroups variable
AgeGroups <- cut(Age, c(0, 13, 15, 17, 25),
                 labels = c("<13", "14/15","16/17","18+") )


boxplot(LungCap,main = "Boxplot of LungCap", 
        ylab = "Lung Capacity",
        las = 1)


boxplot(LungCap ~ Smoke, main = "LungCap vs Smoking", 
        ylab = "Lung Capacity",
        las = 1)
#The box plot shows smokers have higher lung capacity than non-smokers
#which is counter-intuitive. However, we did not consider age of smokers.
#Smokers in general are older than non-smokers and thus have a higher lung
#lung capacity than non-smokers, which in general are childre. Age is thus
#a confounding variable


#Let's account for the confounding variable: age

boxplot(LungCap[Age >= 18] ~ Smoke[Age >= 18], main = "LungCap vs Smoking for Ages 18+", 
        ylab = "Lung Capacity",
        las = 1)

#Here median lung capacity of smokers are lower than non-smokers 

#Let's create boxplots for each age group

boxplot(LungCap ~ Smoke * AgeGroups, main = "LungCap vs Smoking for Ages 18+", 
        ylab = "Lung Capacity",
        las = 2)
#LungCap ~ Smoke * AgeGroups - this makes boxplot for each age group
#las = 2 - makes xlabels vertical so they don't overlap

#add color, blue for Smoke == "no" and red for Smoke == "yes
boxplot(LungCap ~ Smoke * AgeGroups, main = "LungCap vs Smoking for Ages 18+", 
        ylab = "Lung Capacity",
        las = 2,
        col = c(4,2))
# R will recycle color blue and red
#add legends see additional video