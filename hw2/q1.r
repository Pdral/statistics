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

dbinom(x = 0:31, size = 31, prob = 0.447)
#[1] 1.057984e-08 2.651082e-07 3.214377e-06 2.511632e-05 1.421138e-04
#[6] 6.203153e-04 2.172786e-03 6.272510e-03 1.521055e-02 3.142047e-02
#[11] 5.587504e-02 8.622373e-02 1.161604e-01 1.372305e-01 1.426190e-01
#[16] 1.306524e-01 1.056088e-01 7.532248e-02 4.735464e-02 2.618995e-02
#[21] 1.270189e-02 5.378041e-03 1.975986e-03 6.250013e-04 1.684000e-04
#[26] 3.811382e-05 7.109560e-06 1.064220e-06 1.228898e-07 1.027594e-08
#[31] 5.537484e-10 1.443887e-11

