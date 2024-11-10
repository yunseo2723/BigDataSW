#확률값 구하기
dbinom(c(0,1,2,3),3,0.9)

#누적확률값 구하기
pbinom(2,3,0.9)

#누적확률이 p가 되는 x값
qbinom(0.5,3,0.9)

#이항확률분포 그래프 그리기
x<-seq(0,20,by=1)
p<-dbinom(x,20,0.2)
names(p)<-c(0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20)
barplot(p, col="red", border = "black")

#포아송 확률분포
dpois(8,10) #평균이 10일때 8이 될 확률은?

x<-seq(0,30,by=1)
p<-dpois(x,10)
names(p)<-c(0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30)
barplot(p, col="red", border = "black")

#초기하 확률분포
x<-seq(0,10, by=1)
p<-dhyper(x,50,20,10)
names(p)<-c(0,1,2,3,4,5,6,7,8,9,10)
barplot(p, col="red", border = "black")

library(ggplot2)
