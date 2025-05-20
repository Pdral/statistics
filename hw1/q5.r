rm(list=ls())
library(ggplot2)
load(file = "diamonds.rda")
diamonds
## A tibble: 53,940 x 10
#   carat cut       color clarity depth table price     x     y     z
#   <dbl> <ord>     <ord> <ord>   <dbl> <dbl> <int> <dbl> <dbl> <dbl>
# 1 0.23  Ideal     E     SI2      61.5    55   326  3.95  3.98  2.43
# 2 0.21  Premium   E     SI1      59.8    61   326  3.89  3.84  2.31
# 3 0.23  Good      E     VS1      56.9    65   327  4.05  4.07  2.31
# 4 0.290 Premium   I     VS2      62.4    58   334  4.2   4.23  2.63
# 5 0.31  Good      J     SI2      63.3    58   335  4.34  4.35  2.75
# 6 0.24  Very Good J     VVS2     62.8    57   336  3.94  3.96  2.48
# 7 0.24  Very Good I     VVS1     62.3    57   336  3.95  3.98  2.47
# 8 0.26  Very Good H     SI1      61.9    55   337  4.07  4.11  2.53
# 9 0.22  Fair      E     VS2      65.1    61   337  3.87  3.78  2.49
#10 0.23  Very Good H     VS1      59.4    61   338  4     4.05  2.39
# ... with 53,930 more rows
ggplot(diamonds, aes(price))+
+ geom_histogram()
#`stat_bin()` using `bins = 30`. Pick better value with `binwidth`.
> ggplot(diamonds, aes(price)) +
+   geom_histogram() +
+   scale_x_binned()
#Erro: StatBin requires a continuous x variable: the x variable is discrete.  
#Perhaps you want stat="count"?
#Run `rlang::last_error()` to see where the error occurred.
ggplot(diamonds, aes(price))+
+ geom_histogram(binwidth=1000)
ggplot(diamonds, aes(price))+
+ geom_histogram(binwidth=500)
ggplot(diamonds, aes(price))+
+ geom_histogram(binwidth=300)
ggplot(diamonds, aes(price))+
+ geom_histogram(binwidth=150)
ggplot(diamonds, aes(price))+
+ geom_histogram(binwidth=100)
ggplot(diamonds, aes(price))+
+ geom_histogram(binwidth=1000)
ggplot(diamonds, aes(price))+
+ geom_histogram(binwidth=2000)
ggplot(diamonds, aes(price))+
+ geom_histogram(binwidth=3000)
ggplot(diamonds, aes(price))+
+ geom_histogram(binwidth=4000)
ggplot(diamonds, aes(price))+
+ geom_histogram(binwidth=4500)
ggplot(diamonds, aes(carat))+
+ geom_histogram(binwidth=1)
ggplot(diamonds, aes(carat))+
+ geom_histogram(binwidth=0.01)
ggplot(diamonds, aes(carat))+
+ geom_histogram(binwidth=0.1)
ggplot(diamonds, aes(depth))+
+ geom_histogram(binwidth=0.1)
ggplot(diamonds, aes(depth))+
+ geom_histogram(binwidth=1)
ggplot(diamonds, aes(depth))+
+ geom_histogram(binwidth=10)
ggplot(diamonds, aes(table))+
+ geom_histogram(binwidth=10)
ggplot(diamonds, aes(table))+
+ geom_histogram(binwidth=0.1)
ggplot(diamonds, aes(table))+
+ geom_histogram(binwidth=1)
ggplot(diamonds, aes(x))+
+ geom_histogram(binwidth=1)
ggplot(diamonds, aes(x))+
+ geom_histogram(binwidth=0.1)
ggplot(diamonds, aes(y))+
+ geom_histogram(binwidth=0.1)
ggplot(diamonds, aes(y))+
+ geom_histogram(binwidth=1)
ggplot(diamonds, aes(y))+
+ geom_histogram(binwidth=0.5)
ggplot(diamonds, aes(z))+
+ geom_histogram(binwidth=0.1)
ggplot(diamonds, aes(z))+
+ geom_histogram(binwidth=1)
ggplot(diamonds, aes(z))+
+ geom_histogram(binwidth=0.1)
ggplot(diamonds, aes(z))+
+ geom_histogram(binwidth=0.5)
ggplot(diamonds, aes(z))+
+ geom_histogram(binwidth=0.25)
getmode <- function(v) {
+    uniqv <- unique(v)
+    uniqv[which.max(tabulate(match(v, uniqv)))]
+ }
mean(carat)
#[1] 0.7979397
getmode(carat)
#[1] 0.3
median(carat)
#[1] 0.7
var(carat)
#[1] 0.2246867
sd(carat)
#[1] 0.4740112
mean(depth)
#[1] 61.7494
getmode(depth)
#[1] 62
median(depth)
#[1] 61.8
var(depth)
#[1] 2.052404
sd(depth)
#[1] 1.432621
mean(table)
#[1] 57.45718
getmode(table)
#[1] 56
median(table)
#[1] 57
var(table)
#[1] 4.992948
sd(table)
#[1] 2.234491
mean(x)
#[1] 5.731157
getmode(x)
#[1] 4.37
median(x)
#[1] 5.7
var(x)
#[1] 1.258347
sd(x)
#[1] 1.121761
mean(y)
#[1] 5.734526
getmode(y)
#[1] 4.34
median(y)
#[1] 5.71
var(y)
#[1] 1.304472
sd(y)
#[1] 1.142135
mean(z)
#[1] 3.538734
getmode(z)
#[1] 2.7
median(z)
#[1] 3.53
var(z)
#[1] 0.4980109
sd(z)
#[1] 0.7056988
