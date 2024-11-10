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