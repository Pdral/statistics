# Item a da questao 3.2

x <- c(0.14, 1.46, 49.99, 17.30, 11.88, 70.96, 20.87, 4.90, 9.55, 9.19, 11.30, 48.42, 36.99, 4.60)

L1 <- function(x, lambda) prod(dexp(x = x, rate = lambda))

optimize(f = L1, x = x, interval = c(0.001, 1), maximum = TRUE)
# $maximum
# [1] 0.04706666


# Item b da questao 3.2

lambda <- seq(0.001, 1, 1/50)

l <- log((lambda^14) * exp(-lambda * sum(x)), exp(1))

plot(lambda, l, type = 'l', xlab = 'Lambda', ylab = 'Log - verossimilhanca')
points(lambda, l, pch = 20)
abline(v = 0.04706666, lty = 2)

L2 <- (lambda^14) * exp(-lambda * sum(x))

plot(lambda, L2, type = 'l', xlab = 'Lambda', ylab = 'Verossimilhanca')
points(lambda, L2, pch = 20)
abline(v = 0.04706666, lty = 2)
