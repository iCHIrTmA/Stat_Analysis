LungCapData <- read.table(file.choose(), sep="\t", header=T)
dim (LungCapData)

names(LungCapData)

class(Gender)

table(Gender)

count <- table(Gender)

count

count / nrow(LungCapData)

percent <- count / nrow(LungCapData)

percent

barplot(count)

barplot(percent)

barplot(percent, main = "TITLE", ylab = "%", xlab = "Gender")  

barplot(percent, main = "TITLE", ylab = "%", xlab = "Gender", las = 1)

barplot(percent, main = "TITLE", 
        ylab = "%", 
        xlab = "Gender", 
        las = 1, 
        names.arg = c("Female", "Male") ) 

barplot(percent, main = "TITLE", 
        ylab = "Gender", 
        xlab = "%", 
        las = 1, 
        names.arg = c("Female", "Male"),
        horiz = TRUE)  

        