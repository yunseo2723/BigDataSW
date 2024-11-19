p<-pnorm(1.940285, mean = 0, sd = 1, lower.tail = F)
p2<-p*2
p2

qt(0.005, 37, lower.tail = F)

p<-pt(1.940285, 37, lower.tail = F)
p2 <- p*2
p2


data2<- c(0.023, 0.020,0.013,0.012,0.012,0.021,0.028,-0.003,0.030,-0.004)
mean(data2)
sd(data2)
t<-mean(data2)/{sd(data2)/sqrt(9)}
t
pt(t,9,lower.tail = F)


t.test(data1,data2,paired = T)