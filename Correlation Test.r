#01/21/2026, Samaria McFadden, Purpose: Correlation Test 
if(!require(devtools)) install.packages("devtools"); devtools::install_github("kassambara/ggpubr")
library("ggpubr")
my_data <- mtcars 
head(my_data, 6)
ggscatter(my_data, x = "mpg", y = "wt", add = "reg.line", conf.int = TRUE, cor.coef = TRUE, cor.method = "pearson", xlab = "Miles/(US) gallon", ylab = "Weight (1000 lbs)")
res <- cor.test(my_data$wt, my_data$mpg, method = "pearson") 
res
