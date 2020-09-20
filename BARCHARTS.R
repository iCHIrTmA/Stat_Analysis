#https://www.youtube.com/watch?v=Eph_Y0BmHU0&list=PLqzoL9-eJTNAz0IuV1nAV7KMkGBf4QcQX&index=7

#Bar Charts and Pie Charts - useful for CATEGORICAL variable

LungCapData <- read.table(file.choose(), sep="\t", header=T)
class(LungCapData$Gender)

#Varialbe Gender is a factor, so a bar chart is appropriate

table(LungCapData$Gender)
count <- table(LungCapData$Gender)

#express Gender as relative frequencies
count / nrow(LungCapData)

percent <- count / nrow(LungCapData)

#produce barchart
barplot(count) #frequence
barplot(percent) #relative frequence or proportion

#add titles and labels
barplot(percent,
        main = "Gender Ratios",
        ylab = "Percent",
        xlab = "Gender",
        las = 1,
        names.arg=c("Female", "Male"))

# horizontal graph
barplot(percent,
        main = "Gender Ratios",
        ylab = "Gender",            #CHANGE xlab and ylab
        xlab = "Percent",
        las = 1,
        names.arg=c("Female", "Male"),
        horiz = T)
# pie charts (NOT RECOMMENDED)
pie(count, main = "Title",)

box()
