rm(list = ls())

## Item 1 ##

# Distribuicao de probabilidade de X
dbinom(x = 0:31, size = 31, prob = 0.447)

# PMF
X <- seq(0, 31, 1)
prb = dbinom(x = X, size = 31, prob = 0.447)
plot(X, prb, type = 'h', xlab = 'X', ylab = 'Px(X)', lwd = 1)
points(X, prb, pch = 19, col = 'blue')
abline(h = 0)

# CDF
cumprob <- c(0, cumsum(prb))
cumprob.plot = stepfun(X, cumprob)
plot.stepfun(cumprob.plot, col = 'red', do.points = TRUE, pch = 19, main = "",
             ylab = "Fx(X)", xlab = "Alunos que usaram internet", verticals = FALSE,
             lwd = 1)
abline(h = 0)

## Item 2 ##
1 - pbinom(q = 11, size = 31, prob = 0.447)

## Item 3 ##
dbinom(x = 17, size = 31, prob = 0.447) +
dbinom(x = 18, size = 31, prob = 0.447)

## Item 4 ##
dbinom(x = 22, size = 31, prob = 0.447)

## Item 5 ##

# Valor esperado
sum(X * prb)

# Variancia
sum(X * prb) * (0.553)

# Desvio padrao
sqrt(sum(X * prb) * (0.553))
