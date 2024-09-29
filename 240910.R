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

#3
url1 <- "https://vincentarelbundock.github.io/Rdatasets/csv/AER/CASchools.csv"
MYURL1 <- read.csv(url1, nrows = 10)
str(MYURL1)
head(MYURL1)



#예제연습

test <- read.table("c:/rData/test.txt", header = T)
test

test2 <- read.table("c:/rData/test2.txt")
test2

test3 <- read.table("c:/rData/test3.txt", header = T, sep=",")
test3

test4 <- read.table("c:/rData/test4.txt", header = T, sep=",", skip=1)
test4

test4 <- read.table("c:/rData/test4.txt", header = T, sep=",", skip=1, nrows = 3)
test4

test5 <- scan("c:/rData/test.txt", skip=1,what = "")
test5

MYDATA <- data.frame()
MYDATA <- edit(MYDATA)

url <- "https://vincentarelbundock.github.io/Rdatasets/csv/boot/acme.csv"
MYURL <- read.csv(url)
str(MYURL)
head(MYURL)

hdfs.cat("/wordcount/README.txt")

DF <- read.csv('c:/rData/도로교통공단_사고유형별_교통사고(2018).csv', header =T)
head(DF, n=6)

my_excel <- read_excel('c:/rData/전체_도시철도노선정보_20240630.xlsx')
head(my_excel, n=7)
