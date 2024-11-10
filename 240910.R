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
