#compare to 68.2%
# six sigma 99.873
N<-100000 #input
counter<-0
for(i in rnorm(N)){
  if(-3<i & i<3){
    counter<- counter+1
  }
}
ans<-100*counter/N
ans
counter
