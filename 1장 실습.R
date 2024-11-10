#실습1
#1-1
abc <- function(r) { x <- 0.1^r * 0.9^(10-r)}
result <- 0
for(r in 0:10) { result <- result + abc(r)}
print (result)

#1-2
abc2 <- function(r) { x <- 1/(2^r)+1/(3^r)}
result <- 0
for(r in 1:5) { result <- result + abc2(r)}
print (result)

#2
data <- read.table("c:/rData/data.txt", header =T)
data
data
#3
url1 <- "https://vincentarelbundock.github.io/Rdatasets/csv/AER/CASchools.csv"
MYURL1 <- read.csv(url1, nrows = 10)
str(MYURL1)
head(MYURL1)

#1장 실습 과제
#1-1
data <- read.table("c:/rData/abcd.txt", header=TRUE, sep="\t", row.names=NULL)
data

#1-2
library(readr)
data <- read_csv(unz("c:/rData/abcd2.zip", "TN_JOINT_INFO_DATA_TABLE.csv"),locale = locale(encoding = "CP949"))

#1-3
#요청 주소 http://apis.data.go.kr/B552657/ErmctInsttInfoInqireService/getParmacyListInfoInqire
#일반 인증키 lxJPQ%2FP1q%2Fsro4sozw4HkyJ8PwGue6dfq1wnXE65DgDmGLMX0xniLt%2B7bj2cLy2ki7ANnDoC74NVXettBd6aag%3D%3D

baseurl <- "http://apis.data.go.kr/B552657/ErmctInsttInfoInqireService/getParmacyListInfoInqire"
category <- "getParamacyFullDown"
param1 <- "serviceKey"
param2 <- "numOfRows"
param3 <- "pageNo"
mykey <-"lxJPQ%2FP1q%2Fsro4sozw4HkyJ8PwGue6dfq1wnXE65DgDmGLMX0xniLt%2B7bj2cLy2ki7ANnDoC74NVXettBd6aag%3D%3D"
dt <- data.frame()
library("XML")
library("RCurl")
library(plyr)
requestUrl <- paste(baseurl, "/", category, "?", param1, "=", mykey, "&", param2, "=", "10", "&", param3, "=", sep="")
page = getForm(paste(requestUrl,"1",sep=""), query="")
doc = xmlToDataFrame(page)
totalDataNum = as.numeric(doc[2,6])
totalPageNum = (totalDataNum%/%10) + 1
url_page = getForm(requestUrl, query="")
doc = xmlParse(url_page)
doc = xmlToList(doc)
for(i in 1:10){
  tmp<-data.frame(doc[2]$body$items[i])
  dt<-rbind.fill(dt,tmp)
}
write.csv(dt,"약국정보.csv")
