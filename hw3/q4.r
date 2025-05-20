df <- read.table('data_hw3.txt')
names(df)[names(df) == "V1"] <- "idade"
names(df)[names(df) == "V2"] <- "distancia"
attach(df)
df
# idade distancia
# 1 18 155
# 2 20 180
# 3 22 171
# 4 23 155
# 5 23 140
# 6 25 149
# 7 27 171
# 8 28 155
# 9 29 140
# 10 32 125
# 11 37 128
# 12 41 140
# 13 46 137
# 14 49 116
# 15 53 140
# 16 55 128
# 17 63 107
# 18 65 128
# 19 66 91
# 20 67 125
# 21 68 91
# 22 70 119
# 23 71 98
# 24 72 113
# 25 73 85
# 26 74 128
# 27 75 140
# 28 77 110
# 29 79 94
# 30 82 110

plot(df, main = 'Tabela de dispersao')

cor(idade, distancia)
# [1] -0.7989413

a <- cov(idade, distancia) / var(idade)
mx <- mean(idade)
my <- mean(distancia)
b <- my - a * mx
a
# [1] -0.9141216
b
# [1] 175.5869

fx <- lm(distancia ~ idade)
fx
# Call:
# lm(formula = distancia ~ idade)
#
# Coefficients:
# (Intercept)       idade  
#     175.5869    -0.9141  

abline(fx, col = 'red')

fitted <- fx$fitted.values
residuals <- distancia - fitted
residuals
# 1 2 3 4 5 6 7
# -4.132679 22.695564 15.523807 0.437929 -14.562071 -3.733828 20.094415
# 8 9 10 11 12 13 14
# 5.008537 -9.077341 -21.334977 -13.764369 1.892118 3.462725 -14.794910
# 15 16 17 18 19 20 21
# 12.861576 2.689820 -10.997208 11.831035 -24.254843 10.659279 -22.426600
# 22 23 24 25 26 27 28
# 7.401643 -12.684235 3.229887 -23.855992 20.058130 32.972251 4.800494
# 29 30
# -9.371262 9.371102

cor(idade, distancia)^2
# [1] 0.6383072

plot(fitted, residuals, ylab = 'Residuos', xlab = 'Aproximacao', main = 'Residuos',
     cex = 1.5, cex.axis = 1.5, cex.lab = 1.5, cex.main = 2)
abline(0, 0, col = 'red', lwd = 2)
