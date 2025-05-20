Age<-c(19,22,21,23,22,20)
Weight<-c(50,75,80,56,75,58)
Height<-c(1.65,1.78,1.91,1.72,1.81,1.68)
Gender<-c(2,1,1,2,1,2)
Gender<-factor(Gender)
levels(Gender)<-c('M', 'F')
mydata<-data.frame(X=Age, Y=Weight, Z=Height,W=Gender)
colnames(mydata)<-c("Age", "Weight", "Height", "Gender")
mydata
#  Age Weight Height Gender
#1  19     50   1.65      F
#2  22     75   1.78      M
#3  21     80   1.91      M
#4  23     56   1.72      F
#5  22     75   1.81      M
#6  20     58   1.68      F
mean(Age)
#[1] 21.16667
mean(Weight)
#[1] 65.66667
mean(Height)
#[1] 1.758333
median(Age)
#[1] 21.5
median(Weight)
#[1] 66.5
median(Height)
#[1] 1.75

#O gênero é um dado qualitativo nominal, de modo que não possui média, mediana, variância ou desvio padrão.

table(Age)
#Age
#19 20 21 22 23 
# 1  1  1  2  1
#A partir desses dados, a moda é 22.
 
table(Weight)
#Weight
#50 56 58 75 80 
# 1  1  1  2  1 
#A partir desses dados, a moda é 75.

table(Height)
#Height
#1.65 1.68 1.72 1.78 1.81 1.91 
#   1    1    1    1    1    1 
#A partir desses dados, o conjunto é amodal.

table(Gender)
#Gender
#M F 
#3 3 
#A partir desses dados, o conjunto é amodal.

var(Age)
#[1] 2.166667
var(Weight)
#[1] 155.4667
var(Height)
#[1] 0.009096667
sd(Age)
#[1] 1.47196
sd(Weight)
#[1] 12.46863
sd(Height)
#[1] 0.09537645
