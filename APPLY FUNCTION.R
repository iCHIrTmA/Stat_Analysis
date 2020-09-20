StockExample <- read.csv("StockExample.csv")
#Use code below to make computations easier (i.e not needing [,2:5] in every code)
StockExample <- read.csv(file.choose("StockExample"), header = T, row.names = 1, sep = ",")

#Get mean of all rows Stock 1 - 4
apply(StockExample[ ,2:5], MARGIN = 2, FUN = mean)
#Without[ ,2:5], R shows error
#>apply(StockExample, MARGIN = 2, mean)
#Output: 
#Error in apply(Stoc kExample, MARGIN = 2, mean) : 
#dim(X) must have a positive length

#This is because apply func applies mean to all columns including
#column 1 , a factor, which is NOT numeric.


apply(StockExample[ ,2:5], MARGIN = 2, FUN = mean)
#Output:
#  Stock1   Stock2   Stock3   Stock4 
#163.746       NA 1523.000   91.571

#Stock 2 has NA
#remove NA by adding na.rm = TRUE
apply(StockExample[ ,2:5], MARGIN = 2, FUN = mean, na.rm = TRUE)
#Output:
#Stock1      Stock2      Stock3      Stock4 
#163.746000    1.463333 1523.000000   91.571000 

#One can also use colMeans func
colMeans(StockExample[ ,2:5], na.rm = TRUE)
#Output:
#Stock1      Stock2      Stock3      Stock4 
#163.746000    1.463333 1523.000000   91.571000 

#find maximum stock price for each stock(i.e.each column) using max func
apply(StockExample[ ,2:5], MARGIN = 2, FUN = max, na.rm = TRUE)
#Ouput:
#Stock1  Stock2  Stock3  Stock4 
#185.74    1.57 1605.00   97.49 

#find 20th and 80th percentiles for each stock (i.e. for each column) using quantile func
apply(StockExample[ ,2:5], MARGIN = 2, FUN = quantile, probs = c(0.2,0.8), na.rm = TRUE)
#Output
#Stock1 Stock2 Stock3 Stock4
#20% 156.516  1.408   1489 89.618
#80% 168.748  1.548   1556 93.546

#create plot for each column by line, using func plot
apply(StockExample[ ,2:5], MARGIN = 2, FUN = plot, type = "l")
#Output
#NULL (see  4 line plots to the right)

#add labels and title to plot
apply(StockExample[ ,2:5], MARGIN = 2, FUN = plot, type = "l", 
      main = "stock", ylab = "Price", xlab = "Day")
#Output
#see plots with labels to the right

#USE 
StockExample <- read.csv(file.choose("StockExample"), header = T, row.names = 1, sep = ",")
#this would make all computations to not need [2:5] specifications

#compute sum of each ROW
apply(StockExample, MARGIN = 1, FUN = sum, na.rm = TRUE)

#Output
#Day1    Day2    Day3    Day4    Day5    Day6    Day7    Day8    Day9   Day10 
#1887.26 1863.31 1742.17 1766.02 1808.33 1780.78      NA 1739.09 1711.91 1754.70 




#compute sum using func rowSUMS (RECOMMENDED)
rowSums(StockExample, na.rm = TRUE)
#Output
#Day1    Day2    Day3    Day4    Day5    Day6    Day7    Day8    Day9   Day10 
#1887.26 1863.31 1742.17 1766.02 1808.33 1780.78 1742.77 1739.09 1711.91 1754.70 

#make plot
plot(apply(StockExample, MARGIN = 1, FUN = sum, na.rm = TRUE), type = "l", 
     main = "Market Trend", ylab = "Total Market Value", xlab = "Day" )
#Output single plot to the right

#add colored points to plot
points(apply(StockExample, MARGIN = 1, FUN = sum, na.rm = TRUE), 
       pch = 16, col = "blue")




