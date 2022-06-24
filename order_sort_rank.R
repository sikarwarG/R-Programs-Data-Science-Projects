#sort#order#rank
x <- c(2, 43, 27, 96, 18)
x1<-sort(x)
x1
x2<-order(x)
x2
x3<-rank(x)
x3
name <- c("Mandi", "Amy", "Nicole", "Olivia")
distance <- c(0.8, 3.1, 2.8, 4.0)
time <- c(10, 30, 40, 50)
time<-time/60
round(time[4],3)
speed<-distance/time
speed
which.max(speed)
speed[1]
speed[which.max(speed)]
