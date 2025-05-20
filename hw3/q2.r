library(bivariate)
library(barsurf)

set.bs.options(nhl = 0, ref.arrows = FALSE, side.color = 'white', theme = 'blue')

PS <- 0.5
PXS <- 0.5
PXSc <- 2/3
PX <- PS * PXS + (1 - PS) * PXSc

PYS <- 2/3
PYSc <- 0.5
PY <- PS * PYS + (1 - PS) * PYSc

Pbinom <- bnbvpmf(PX, PY, 1)
plot(Pbinom)
