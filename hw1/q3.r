rm(list=ls())
getmode <- function(v) {
   uniqv <- unique(v)
   uniqv[which.max(tabulate(match(v, uniqv)))]
}
t<-c(5.6,6.8,7.8,8.8,5.6,7.0,8.0,10.2,5.6,7.0,8.0,10.2,5.8,7.2,8.2,10.2,5.8,7.2,8.2,10.2,6.6,7.4,8.4,10.2)
getmode(t)
#[1] 10.2
hist(t, c(5.5,6.7,7.9,9.1,10.3), plot=FALSE)
#$breaks
#[1]  5.5  6.7  7.9  9.1 10.3

#$counts
#[1] 6 7 6 5
#
#$density
#[1] 0.2083333 0.2430556 0.2083333 0.1736111
#
#$mids
#[1] 6.1 7.3 8.5 9.7
#
#$xname
#[1] "t"

#$equidist
#[1] TRUE

#attr(,"class")
#[1] "histogram"
curto<-c(5.6,5.6,5.6,5.8,5.8,6.6)
plot(table(t), type='h', col='blue')
mcurto<-c(6.8,7.0,7.2,7.2,7.4,7.4,7.8)
mlongo<-c(8.0,8.0,8.2,8.2,8.4,8.8)
longo<-c(10.2,10.2,10.2,10.2,10.2)
plot(table(curto), type='h', col='blue')
plot(table(mcurto), type='h', col='blue')
plot(table(mlongo), type='h', col='blue')
plot(table(longo), type='h', col='blue')
