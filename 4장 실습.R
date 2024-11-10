
#1
#1-1
#1위
one <- 1 / (factorial(45) / (factorial(39)*factorial(6)))  #45C6분의 1 
#2위
two <- 6 / (factorial(45) / (factorial(39)*factorial(6)))  #45C6분의 6 -> 6개의 번호중 하나가 보너스번호이면 됨됨
#3위
three <- 6 * 38 / (factorial(45) / (factorial(39)*factorial(6)))  #45C6분의 6 * 38 -> 당첨번호 6개와 보너스 1개를 제외한 38개
#4위
four <- (15*38*39/2) / (factorial(45) / (factorial(39)*factorial(6)))  #45C4 분의 6C4 * 39C2 -> 당첨번호 6개중 내꺼 4개에 당첨번호 아닌 39개 중 내꺼 2개
#5위
five <- (20*37*19*13) / (factorial(45) / (factorial(39)*factorial(6)))  #45C4 분의 6C3 * 39C3 -> 당첨번호 6개중 내꺼 3개에 당첨번호 아닌 39개 중 내꺼 3개

#1-2
#기대당첨금 = 각 순위 당첨금 * 당첨 확률을 합한값
#복권 구입 인원 = 20000000
#총 당첨금 = 100억억
#1 ~ 5등 총 당첨인원
fivenum <- five*20000000
fournum <- four*20000000
threenum <- three*20000000
twonum <- two*20000000
onenum <- one*20000000
#1 ~ 5등 총 당첨금
fivemoney <- fivenum * 5000
fourmoney <- fournum * 50000
threemoney <- (10000000000 - fivemoney + fourmoney) * 0.125
twomoney <- (10000000000 - fivemoney + fourmoney) * 0.125
onemoney <- (10000000000 - fivemoney + fourmoney) * 0.75
#기대당첨금
result <- 5000 * five + 50000 * four + threemoney * three + twomoney * two + onemoney * one
result

#1-3
fivere <- 400000/20000000*5000
fourre <- 25000/20000000*50000
threere <- 570/20000000*(6750000000*0.125)
twore <- 15/20000000*(6750000000*0.125)
onere <- 3/20000000*(6750000000*0.75)
result <- paste(fivere,",", fourre,",", threere,",", twore,",", onere)
result

#1-4
#5000원을 투자해 훨씬 적은 금액을 기대하는 게임이기 때문에 손해보는 게임이다.

#2
#2-1
23/45

#2-2
5/22

#2-3
8/20

#2-4
(5/10)*(22/45)
(5*45)/(22*22)

#3
#3-1
0.5

#3-2
0.5*0.8/0.5

#3-3
#추가정보 요구 확률
0.5*0.8/(0.5*0.5+0.5*0.8)

#5
#5-1
dnorm(300,600,300)

#5-2
ggplot(data.frame(x=c(0,1200)), aes(x=x)) + stat_function(fun=dnorm, args=list(mean=600,sd=300), colour="red",linewidth=1)

#5-3
pnorm(300, mean=600, sd=300, lower.tail = T)

#5-4
pnorm(1200, mean=600, sd=300, lower.tail = F)

#5-5
pnorm(600, mean=600, sd=300, lower.tail = T)-pnorm(300, mean=600, sd=300, lower.tail = T)


#5-6
#평균 10분, 분산 25분, 표준편차 5분


#베이스정리 시험나옴옴