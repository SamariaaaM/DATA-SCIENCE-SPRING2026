#Author: Samaria McFadden Date: 02/06/2026 Purpose: Correlation test
library("ggpubr")
my_data <- mtcars 
head(my_data, 6)
ggscatter(data, x = "mpg", y = "wt", add = "reg.line", conf.int = TRUE, cor.coef = TRUE, cor.method = "pearson", xlab = "Miles/(US) gallon", ylab = "Weight (1000 lbs)")
res <- cor.test(my_data$wt, my_data$mpg, method = "pearson") 
res
res2 <-cor.test(my_data$wt, my_data$mpg, method = "spearman")
res2
Spearman's rank correlation rho

data:  my_data$wt and my_data$mpg
S = 10292, p-value = 1.488e-11
alternative hypothesis: true rho is not equal to 0
sample estimates:
      rho 
-0.886422 

#Accept the alternate hypothesis 

#Set the working directory 
setwd("/Users/samariamcfadden/Documents")

#Read data.csv file in R
data <-read.csv("data.csv", header = TRUE)