#1
m=80
sxbar=10/sqrt(100)
p1 <- pnorm(81, mean = m, sd = sxbar, lower.tail = T)
p2 <- pnorm(78, mean = m, sd = sxbar, lower.tail = T)
p3 <- p1 - p2
p3
ggplot(data.frame(xis=c(m-4*sxbar, m+4*sxbar)), aes(x=xis)) +
  stat_function(fun=dnorm, args=list(mean=m,sd=sxbar), colour = "red", linewidth = 1)

#2
p=0.7
sd=sqrt(0.7*0.3/100)
p3<-pnorm(0.8, mean = p, sd=sd, lower.tail = T)
p4<-pnorm(0.6, mean = p, sd=sd, lower.tail = T)
p5<-p3-p4
p5
ggplot(data.frame(xis=c(p-4*sd, p+4*sd)), aes(x=xis)) +
  stat_function(fun=dnorm, args=list(mean=p,sd=sd), colour = "red", linewidth = 1)

#3
m=0.45
n=0.55
sd=sqrt(0.45*0.55/1000)
a <- m-2.58*sd
b <- m+2.58*sd
c <- n-2.58*sd
d <- n+2.58*sd
paste(a,b,c,d)
#후보자 A는 0.4~0.49% 후보자 B는 0.5~0.59이므로 확실히 A가 B보다 열위에 있음

#열위에 있음

#4
# 1) 가설설정
# 귀무가설 H0 : μ = 10000
# 대립가설 H1 : μ > 10000
# 2) 유의수준 α = 0.05
# 3) 검정통계량
t<-(10005-10000) / 10*sqrt(36)
t
# 4) p값 계산
pt(t,35,lower.tail = F)
# 5) p값 = 0.002474416 < 0.05 이다. 
# 따라서 유의수준 5%하에서 처리 능력이 향상되었다 볼 수 있다. (귀무가설 기각)

#5
#(1) f(x) = 1 / 0.1*sqrt(2π) * e ^ (1/2 * ( (x-130)^2 / 0.1^2) ) ) 
#(2)
ggplot(data.frame(x=c(129, 131)), aes(x=x)) + stat_function(fun=dnorm, args=list(mean=130, sd=0.1))

#(3)
# 1) 가설설정
# 귀무가설 H0 : μ = 120
# 대립가설 H1 : μ > 120
# 2) 유의수준 α = 0.05
# 3) 검정통계량
t<-(130-120) / 0.1*sqrt(100)
t
# 4) p값 계산
2*pt(t,99,lower.tail = F)
# 5) p값 = 40840172e^-200 < 0.05 이다. 
#따라서 유의수준 5%하에서 인터넷 서비스 이용자는 평균 2분이라고 할 수 없다. (귀무가설 기각)


