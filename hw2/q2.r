rm(list = ls())

library(latex2exp)
pS <- 2/3
pC <- 1 - pS

pXS <- dbinom(15, 20, 0.6)
pXC <- dbinom(15, 20, 0.5)
pX <- pXS * pS + pXC * pC
pSX <- pXS * pS / pX
pSX  # [1] 0.9098867

pCX <- 1 - pSX

Rx <- seq(0, 20)
pXS2 <- dbinom(Rx,
