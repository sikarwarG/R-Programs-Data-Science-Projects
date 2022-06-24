deck<-read.csv(file.choose())
deck2<- deck[1:52,]
head(deck2)
tail(deck)
deck2$face=="ace"
sum(deck2$face=="ace")
