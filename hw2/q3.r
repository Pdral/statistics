rm(list = ls())

library(latex2exp)
t <- 0.05
dpois(0, 100 * t)
# [1] 0.006737947

Rx <- seq(0, 20)
p <- dpois(Rx, 5)

par(mar = c(6, 5, 4, 2))
plot(Rx, p, type = 'h', col = 'red', lwd = 2,
     xlab = TeX('x'), ylab = TeX('P_X(x)'),
     cex.lab = 1.3, cex.axis = 1.2)
points(Rx, p, pch = 19, col = 'red')
abline(h = 0)

cdf = c(0, cumsum(p))
cdf.plot = stepfun(Rx, cdf, f = 0)

par(mar = c(6, 5, 4, 2))
plot.stepfun(cdf.plot, col = 'blue',
             xlab = TeX('x'), ylab = TeX('F_X(x)'),
             verticals = FALSE, main = '',
             do.points = TRUE,
             pch = 19, lwd = 2,
             cex.lab = 1.3,
             cex.axis = 1.2)
