
mtcars

#1
hist(mtcars$cyl)

#2
table(mtcars$cyl, mtcars$gear)

#3
barplot(mtcars$cyl)
barplot(mtcars$gear)

#4
plot(mtcars$cyl, mtcars$gear, type="p")
abline(lm(mtcars$cyl~mtcars$gear))

#5
mean(mtcars$mpg)  #평균
median(mtcars$mpg)  #중앙값
#정확한 중심위치를 알기위해서는 중앙값을 구해야함

#6
IQR(mtcars$mpg)
var(mtcars$mpg)
sd(mtcars$mpg)

#7
library(moments)
skewness(mtcars$mpg)
hist(mtcars$mpg, breaks = 3)

#8
#체비세프 정리: 1보다 큰 z-값에 대해 평균과 z표준편차 사이에 있을 데이터의 비율은 적어도 (1- 1/z2)이다.
mean(mtcars$mpg) #20.09
sd(mtcars$mpg)   #6.02
#연비가 8~32 사이라면 8은 평균보다 표준편차 2배 아래에 있고, 32점은 평균보다 표준편차 2배 위에 있다.
#체비쉐프의 정리를 이용하면 평균과 2표준편차 사이의 자료의 비율은 적어도 0.75, 즉 75%임을 알 수 있다.

#9
#평균과 2표준편차 사이의 자료비율은 근사적으로 95%이다.
#점수가 60점과 80사이이면 60점은 평균보다 표준편차 2배 아래에 있고, 
#80점은 평균보다 표준편차 2배 위에 있다. 
#경험법칙에 의하면 평균과 2표준편차 사이의 자료의 비율은 근사적으로 95%임을 알 수 있다. 
#따라서 근사적으로 95%의 학생이 60점과 80점 사이에 있다고 말 할 수 있다. 

#10
#박스플롯 하한=1사분위수 - 1.5*IQR, 박스플롯 상한=3사분위수 + 1.5*IQR
range(mtcars$mpg)
IQR(mtcars$mpg)*1.5
boxplot(mtcars$mpg)

#11
fivenum(mtcars$mpg)

#12
boxplot(mtcars$mpg)

#13
#분포 모양은 전체적인 연비의 흐름을 보고 싶을 때
#박스플롯은 연비의 요약 통계와 이상치를 빠르게 확인하고 싶을 때

#14
cov(mtcars$mpg, mtcars$disp, method = "pearson")
cor(mtcars$mpg, mtcars$disp)

