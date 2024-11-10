library(ggplot2)
library(ggalt)
library(ggExtra)
library(ggcorrplot)
library(lubridate)
library(forecast)
#글자설정
theme_set(theme_bw(base_size = 18, base_family = "sans"))

ggalt_data <- MYDATA[MYDATA$Height>160 & MYDATA$Height<180 & MYDATA$Weight>70 & MYDATA$Weight<85, ]
#데이터 점 표시 방법(geom_point), 축 구간 설정(xlim, ylim), 제목: (title)
#소제목(subtitle) 주석(caption) 축 설명(x,y), 선추가(geom_abline), 평활화된 함수 추가(geom_smooth), 원형 추가(geom_encircle)
ggplot(MYDATA, aes(x=Height, y=Weight))+geom_point(colour = "red", size=3)+xlim(c(0,200))+ylim(c(0,100))+labs(title="Scatterplot", caption="MYDATA", subtitle="Height vs Weight", x="키",y="몸무게")+geom_abline(intercept= -86.58, slope= 0.9137, colour="blue")+geom_smooth(aes(x=Height, y=Weight), method="lm", colour="black", se=T, level=0.95)+geom_encircle(aes(x=Height, y=Weight), data=ggalt_data, size=4, colour="blue")

#비눗방울 차트
ggplot(MYDATA, aes(School, Grade))+geom_jitter(size=3)
ggplot(MYDATA, aes(School, Grade))+geom_count()

#산포도 주변에 히스토그램이나 박스플롯, 확률밀도 그래프 추가
gg <- ggplot(mtcars, aes(cyl, mpg))+geom_count()
ggMarginal(gg, type="histogram", fill="transparent")

#상관관계 그림
#상관관계 행렬 소수점 이하 첫째자리까지 계산산
corre <- round(cor(mtcars),1)
#상관관계 행렬 p값 계산
p.mat <- cor_pmat(mtcars)

ggcorrplot(corre, hc.order=TRUE, type="lower", lab=TRUE, lab_size=3, method="circle", ggtheme=theme_bw, p.mat=p.mat, insig="pch", title="mtcars에 대한 상관관계 그림")

#그룹별 평균을 구하여 순위에 따르는 막대그림표
#model별 연비
city_mpg <- aggregate(mpg$cty, by=list(mpg$model), FUN=mean)
colnames(city_mpg) <- c("모델", "연비")
city_mpg <- city_mpg[order(city_mpg$연비, decreasing = T), ]
#모델을 명목변수로 전환
city_mpg$모델 <- factor(city_mpg$모델, levels=city_mpg$모델)

ggplot(city_mpg, aes(x=모델, y=연비)) + geom_bar(stat="identity", width=0.5, fill="red")+labs(title="순서화된 막대그림표")+theme(axis.text.x=element_text(angle=90))

#박스플롯
theme_set(theme_classic())
#cyl을 명목변수로 전환
mpg$cyl <- factor(as.character(mpg$cyl))
ggplot(mpg, aes(cyl, cty))+geom_boxplot(varwidth=F, fill="red")+labs(title="비교를 위한 박스 플롯")+stat_summary(fun.y = "mean", geom="point", size=3, color="white")

#확률밀도 함수로 비교
ggplot(mpg, aes(cty))+geom_density(aes(fill=factor(cyl)), alpha=0.8)+labs(title="경험적 확률밀도함수", x="시내 주행연비", fill="실린더 개수")

#시계열 자료 그래프 그리기
AirPassengers
plot(AirPassengers)
economics
write.csv(economics, file="c:/rData/economics.txt")
economics2 <- read.csv(file="c:/rData/economics.txt")
economics2
economics2$date2 <- as.Date(economics2$date, "%Y-%m-%d")
economics2

theme_set(theme_gray(base_size=10))
ggplot(economics2, aes(x=date2))+geom_line(aes(y=pop))+labs(title="미국의 인구수")

#날짜를 문자열로 생성하여 x축에 표시하여 그래프 그리기
economics2_m <- economics2[551:574, ] # 최근 24개월 데이터
date3 <- paste(month.abb[month(economics2_m$date)], sep=" ", lubridate::year(economics2_m$date))
date3

#x축 표현을 date3으로, 구분은 date2기간으로
ggplot(economics2_m, aes(x=date2))+geom_line(aes(y=pop))+labs(title="최근 2년간 미국의 인구수", subtitle="lubridate를 이용하여")+scale_x_date(labels = date3, breaks = economics2_m$date2)+ theme(axis.text.x = element_text(angle=90, vjust = 0.5), panel.grid.minor=element_blank())

#한화면에 여러 시계열 그래프 그리기
breakss <- economics2$date2[seq(1, length(economics2$date2), 12)]
breakss

#날짜 데이터를 문자열로 표시하기
labell <- paste(lubridate::year(breakss), sep=" ", lubridate::month(breakss))
labell

#한화면에 두개의 그래프 그리기
ggplot(economics2, aes(x=date2))+geom_line(aes(y=psavert, col= "psavert"))+geom_line(aes(y=uempmed, col="uempmed"))+scale_x_date(labels=labell, breaks=breakss)+theme(axis.text.x=element_text(angle=90, vjust=0.6, size=5), panel.gid.minor = element_blank())+labs(title="한 화면에 두개의 그래프 그리기")

#계절성 그래프 그리기
theme_set(theme_classic())

ggseasonplot(AirPassengers)+labs(title="AirPassengers에 대한 계절성 그래프(seasonal Plot)")


