## Item 1 ##

# PDF
curve(dnorm(x, mean = 170, sd = 10), xlim = c(-20, 360), ylab = "f(X)")
abline(v = 170, lty = 2)

# CDF
curve(pnorm(x, mean = 170, sd = 10), xlim = c(-20, 360), ylab = "F(X)")
abline(v = 170, lty = 2)

## Item 2 ##

# P(X > 175)
pnorm(q = 175, mean = 170, sd = 10, lower.tail = FALSE)

# P(X < 160)
pnorm(q = 160, mean = 170, sd = 10, lower.tail = TRUE)

# P(160 < X < 175)
pnorm(q = 175, mean = 170, sd = 10, lower.tail = TRUE) -
pnorm(q = 160, mean = 170, sd = 10, lower.tail = TRUE)

## Item 3 ##

# P(X > 180 | X > 175)
pnorm(q = 180, mean = 170, sd = 10, lower.tail = FALSE) /
pnorm(q = 175, mean = 170, sd = 10, lower.tail = FALSE)

pnorm(q = 175, mean = 170, sd = 10, lower.tail = FALSE)
# [1] 0.3085375

pnorm(q = 160, mean = 170, sd = 10, lower.tail = TRUE)
# [1] 0.1586553

pnorm(q = 175, mean = 170, sd = 10, lower.tail = TRUE) -
pnorm(q = 160, mean = 170, sd = 10, lower.tail = TRUE)
# [1] 0.5328072

pnorm(q = 180, mean = 170, sd = 10, lower.tail = FALSE) /
pnorm(q = 175, mean = 170, sd = 10, lower.tail = FALSE)
# [1] 0.514217
