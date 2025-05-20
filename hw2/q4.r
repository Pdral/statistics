rm(list = ls())

# Primeiro item

rbinom(n = 1, size = 15, prob = 0.4)

# Segundo item
i <- 1
a <- 0
for(i in 1:100) {
  a[i] <- rbinom(1, 15, 0.4)
}

# Terceiro item
hist(a, main = "Histograma de frequência absoluta do número de caras",
     xlab = "Número de caras")

rbinom(1, 15, 0.4)
# [1] 7
