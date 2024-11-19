#중심극한정리 시험나옴

#랜덤 표본 추출
library(ggplot2)
sample(1:1000, 10)

#표본평균 Xn=41.80953, 표준편차 = 7.5075인 정규분포 그래프
m=41.80953
sxbar = 33.57472/sqrt(20)
ggplot(data.frame(xis=c(m-4*sxbar, m+4*sxbar)), aes(x=xis)) +
  stat_function(fun=dnorm, args=list(mean=m,sd=sxbar), colour = "red", linewidth = 1) +
  ggtitle("Graph of Normal Distribution")

#표본평균 확률계산
#20명의 접속자의 평균이 45초 이하일 확률
p1 <- pnorm(45, mean = m, sd = sxbar, lower.tail = T)
p1

#평균이 35이상 45이하일 확률
p2 <- pnorm(35, mean = m, sd = sxbar, lower.tail = T)
p3 <- p1 - p2
p3

#평균이 40초 이상일 확률
p4 <- pnorm(40, mean = m, sd = sxbar, lower.tail = F)
p4

#30명 조사, 표본평균 2분, 표본표준편차 30초일때 모평균이 60초 미만일 확률
# Xn바 = 120, Sn = 30, n = 30명, u=모평균
# P(t(n-1) > 10.95445) -> t(29)
pt(10.95445, 29 , lower.tail = F)

# 가설검정하는 2가지 방법 시험출제가능

