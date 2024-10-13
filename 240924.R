#p12 바 차트
MYDATA <- c(24560166, 13828484, 10841436, 6764049)
names(MYDATA) <- c("SKT", "KT", "LGU+", "MVNO")
MYDATA
barplot(MYDATA, col="red", border = "black", main="Subscriber Numbers of Mobile Phone", xlab="Service Providers", ylab = "Subscriber Numbers")

#p13 상대 도수분포표
sum <- sum(MYDATA)
MYDATA <- MYDATA/sum(MYDATA)
MYDATA
barplot(MYDATA, col="red", border = "black", main="Ratio of Subscriber Numbers", xlab="Service Providers", ylab = "Subscriber Numbers")

#p14 파이차트
pie(MYDATA, radius = 1, col = "red", border = "black", main = "Pie Chart of Subscriber Numbers")

#p15 히스토그램
height <- c(150,153,157,160,166,170,171,181,182,182,189)
hist(height, breaks = c(150,160,170,180,190), col="red", border="black", main= "Histogram Example")

#p16 줄기-잎 그림
stem(height, scale = 1)

#p17 두 변수 요약
MYDATA <- read.csv(file = "c:/rData/crosstab.csv", header = T)
MYDATA
table(MYDATA$School, MYDATA$Grade)

#p18 두 변수 도수분포표
table1 <- table(MYDATA$Grade, MYDATA$School)
barplot(table1, legend.text=T, col=c("red","yellow","black"))

#p20 산포도
plot(MYDATA$Weight, MYDATA$Height, type="p")
abline(lm(MYDATA$Height~MYDATA$Weight))

#p21 3차원 산포도
library(scatterplot3d)
s3d <- scatterplot3d(MYDATA$Height, MYDATA$Weight, MYDATA$Score)




