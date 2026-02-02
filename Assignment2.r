#Author: Samaria McFadden Date: 02/02/2026, pURPOSE: Test Correlation 

#Load the library ggpubr
library("ggpubr")

#Set the working directory to 02-10-2020_1930.csv file
setwd("/Users/samariamcfadden/Downloads")

#Load the dataset
my_data<- read.csv("02-10-2020_1930.csv")

#Create Scatter plot of dataset 
ggscatter(my_data, x = "Confirmed", y = "Deaths", add = "reg.line", conf.int = TRUE, cor.coef = TRUE, cor.method = "pearson", xlab = "Confirmed Cases", ylab = "Deaths")
res <- cor.test(my_data$Confirmed, my_data$Deaths, method = "pearson") 
res
Pearson's product-moment correlation

data:  my_data$Confirmed and my_data$Deaths
t = 119.11, df = 70, p-value < 2.2e-16
alternative hypothesis: true correlation is not equal to 0
95 percent confidence interval:
 0.9960631 0.9984661
sample estimates:
      cor 
0.9975423 