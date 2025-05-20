rm(list=ls())
idade <- c(28,34,46,26,37,29,51,31,39,43,58,44,25,23,52,42,48,33,38,46)
nac <- c(1,2,3,4,1,4,5,3,1,1,1,2,5,4,1,6,5,1,6,1)
nac<-factor(nac)
levels(nac)<-c('Italiana', 'Inglesa', 'Belga', 'Espanhola', 'Francesa', 'Alemana')
renda<- c(2.3,1.6,1.2,0.9,2.1,1.6,1.8,1.4,1.2,2.8,3.4,2.7,1.6,1.2,
1.1,2.5,2.0,1.7,2.1,3.2)
xp <- c(2,8,21,1,15,3,28,5,13,20,32,23,1,0,29,18,19,7,12,23)
data <- data.frame(Idade = idade, Nacionalidade = nac, Renda = renda, Experiência = xp)
data
#   Idade Nacionalidade Renda Experiência
#1     28      Italiana   2.3           2
#2     34       Inglesa   1.6           8
#3     46         Belga   1.2          21
#4     26     Espanhola   0.9           1
#5     37      Italiana   2.1          15
#6     29     Espanhola   1.6           3
#7     51      Francesa   1.8          28
#8     31         Belga   1.4           5
#9     39      Italiana   1.2          13
#10    43      Italiana   2.8          20
#11    58      Italiana   3.4          32
#12    44       Inglesa   2.7          23
#13    25      Francesa   1.6           1
#14    23     Espanhola   1.2           0
#15    52      Italiana   1.1          29
#16    42       Alemana   2.5          18
#17    48      Francesa   2.0          19
#18    33      Italiana   1.7           7
#19    38       Alemana   2.1          12
#20    46      Italiana   3.2          23
table(idade)/length(idade)
#idade
#  23   25   26   28   29   31   33   34   37   38   39   42   43 
#0.05 0.05 0.05 0.05 0.05 0.05 0.05 0.05 0.05 0.05 0.05 0.05 0.05
#  44   46   48   51   52   58
#0.05 0.10 0.05 0.05 0.05 0.05  
cumsum(table(idade)/length(idade))
# 23   25   26   28   29   31   33   34   37   38   39   42   43  
#0.05 0.10 0.15 0.20 0.25 0.30 0.35 0.40 0.45 0.50 0.55 0.60 0.65 # 44   46   48  51   52   58 
#0.70 0.80 0.85 0.90 0.95 1.00
table(nac)/length(nac)
nac
# Italiana   Inglesa     Belga Espanhola  Francesa   Alemana 
#     0.40      0.10      0.10      0.15      0.15      0.10 
cumsum(table(nac)/length(nac))
# Italiana   Inglesa     Belga Espanhola  Francesa   Alemana 
#     0.40      0.50      0.60      0.75      0.90      1.00 
table(renda)/length(renda)
#renda
#0.9 1.1  1.2   1.4 1.6  1.7  1.8   2.0 2.1  2.3   2.5 2.7  2.8   3.2 3.4 
#0.05 0.05 0.15 0.05 0.15 0.05 0.05 0.05 0.10 0.05 0.05 0.05 0.05 0.05 0.05 
> cumsum(table(renda)/length(renda))
# 0.9  1.1  1.2  1.4  1.6  1.7  1.8  2.0  2.1  2.3  2.5  2.7  2.8  3.2  3.4 
#0.05 0.10 0.25 0.30 0.45 0.50 0.55 0.60 0.70 0.75 0.80 0.85 0.90 0.95 1.00 
table(xp)/length(xp)
#xp
#   0    1    2    3    5    7    8   12   13   15   18   19   20 
#0.05 0.10 0.05 0.05 0.05 0.05 0.05 0.05 0.05 0.05 0.05 0.05 0.05 
#  21   23   28   29   32 
#0.05 0.10 0.05 0.05 0.05 
cumsum(table(xp)/length(xp))
#   0    1    2    3    5    7    8   12   13   15   18   19   20 
#0.05 0.15 0.20 0.25 0.30 0.35 0.40 0.45 0.50 0.55 0.60 0.65 0.70 
# 21   23   28   29   32 
#0.75 0.85 0.90 0.95 1.00 
barplot(table(nac), col='blue')
hist(renda, c(0,1,2,3,4), plot=TRUE)
mean(idade)
#[1] 38.65
mean(renda)
#[1] 1.92
mean(xp)
#[1] 14
quantile(renda)
#  0%  25%  50%  75% 100% 
#0.90 1.35 1.75 2.35 3.40 
boxplot(renda)
