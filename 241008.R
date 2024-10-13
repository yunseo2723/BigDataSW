MYDATA <- read.csv(file = "c:/rData/crosstab.csv", header = T)
MYDATA

#표본평균
mean(MYDATA$Height)

#양 끝단 20% 제외한 평균
mean(MYDATA$Height, trim=0.2)

#중앙값
median(MYDATA$Height)

#가중평균
weighted.mean(MYDATA$Height, MYDATA$Score)

#기하평균
factor <- c(1.05,1.02)
y <- prod(factor)     #1.05*1.02
n <- length(factor)   #factor 인자의 개수 -> 2
rate <- y^(1/n)       #제곱근을 구함 -> 1 + 성장률 형식으로 나옴
rate <- rate - 1      #결과값은 -1을 해줘야 함
rate

#사분위수 평균
quantile(MYDATA$Height, probs = 0.1)
x <- quantile(MYDATA$Height, probs = c(0.25, 0.5, 0.75))
x
mean <- (x[1]+x[2]+x[3])/3
mean

#사분위수 범위
range(MYDATA$Height)
? range
IQR(MYDATA$Height)

#표본분산
Hong <- c(300, 300, 300, 300, 300)
Kim <- c(200, 400, 300, 400, 200)
var(Hong)
var(Kim)

#표준편차
sd(Hong)
sd(Kim)

#변이계수
cv1 <- sd(Hong)/mean(Hong)*100
cv2 <- sd(Kim)/mean(Kim)*100
cv1
cv2

#모집단 분포모양, 이상값 측정
library(moments)
x3 <- c(1, 4, 4, 7, 7, 7, 10, 11, 12, 12, 12, 13, 14, 15, 18, 18, 20)
x3
skewness(x3)
scale(x3, center = T)

#분포의 개략적 추정
fivenum(x3)   #시험출제

#박스플롯
boxplot(x3)

#공분산
cov(MYDATA$Height, MYDATA$Weight, method = "pearson") #method는 안써도됨

library(ggplot2)
plot(MYDATA$Height, MYDATA$Weight)

#상관계수
cor(MYDATA$Height, MYDATA$Weight)
cor(MYDATA$Height, MYDATA$Score)

#정량적 자료요약
x <- c(-3, -2, -1, 0, 1, 2, 3)
y <- c(10, 5, 3, 1, 3, 5, 10)
cor(x, y)

