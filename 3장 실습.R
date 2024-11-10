library(ggplot2)
library(ggalt)
library(ggExtra)
library(ggcorrplot)
library(lubridate)
library(forecast)
mtcars2 <- aggregate(mtcars$mpg, by = list(row.names(mtcars)), FUN = mean)

mtcars2
#1
AirPassengers

Sys.setlocale("LC_TIME", "C")
write.table(AirPassengers, file = "c:/rData/AirPassengers_data.txt", row.names = FALSE, col.names = FALSE)
AirPassengers_data <- read.table("c:/rData/AirPassengers_data.txt", header = FALSE)

start_date <- as.Date("1949-01-01")
dates <- seq(from = start_date, by = "month", length.out = length(AirPassengers))

# 데이터프레임에 날짜 컬럼 추가
AirPassengers_data <- data.frame(Date = dates, Passengers = AirPassengers_data$V1)
AirPassengers_data

ggalt_data <- AirPassengers_data[AirPassengers_data$Date > as.Date("1958-01-01") & AirPassengers_data$Date < as.Date("1960-12-01") & 
                                   AirPassengers_data$Passengers>300 & AirPassengers_data$Passengers<500, ]
ggalt_data
#데이터 점 표시 방법(geom_point), 축 구간 설정(xlim, ylim), 제목: (title)
#소제목(subtitle) 주석(caption) 축 설명(x,y), 선추가(geom_abline), 평활화된 함수 추가(geom_smooth), 원형 추가(geom_encircle)
ggplot(AirPassengers_data, aes(x=Date, y=Passengers))+geom_point(colour = "red", size=3)+
  labs(title="Scatterplot", x="Year",y="Passenger")+geom_abline(intercept= -86.58, slope= 0.9137, colour="blue")+
  geom_smooth(aes(x=Date, y=Passengers), method="lm", colour="black", se=T, level=0.95)+
  geom_encircle(aes(x=Date, y=Passengers), data=ggalt_data, size=4, colour="blue")

#2
mtcars
boxplot(mtcars$gear)
fivenum(mtcars$gear)  #최소, 1사, 2사, 3사, 최대
#박스플롯 하한=1사분위수 - 1.5*IQR, 박스플롯 상한=3사분위수 + 1.5*IQR

#3
airmiles
write.csv(airmiles, "C:/rData/airmiles.txt")
airmiles2 <- read.csv("C:/rData/airmiles.txt")
airmiles2
names(airmiles2) <- c("year", "airmiles")
airmiles2$year <- airmiles2$year+1936
airmiles2$year <- as.character(airmiles2$year)
airmiles2$date <- as.Date(airmiles2$year, format = "%Y")

year2 <- paste(month.abb[month(airmiles2$date)], sep = " ", lubridate::year(airmiles2$date))
year2

ggplot(airmiles2, aes(x = date)) + 
  geom_line(aes(y = airmiles)) +
  scale_x_date(labels = year2,
               breaks = airmiles2$date) +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5))


