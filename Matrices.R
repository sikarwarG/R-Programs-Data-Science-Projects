#matrix

?matrix
my_data<- 1:25
my_data
A<- matrix(my_data,5,5)
A
A[2,4]
A[2,]
A[,4]
B<-matrix(my_data,5,5,byrow=TRUE)
B
B[2,5]

# rbind

r1<- c('I','am','happy')
r2<- c('what','a','day')
r3<- c(1,2,3)
C<-rbind(r1,r2,r3)
C
C[1,3]
C[1,]

# cbind

p1<- c('I','am','happy')
p2<- c('what','a','day')
p3<- c(1,2,3)
D<-cbind(p1,p2,p3)
D
D[1,]
D[,1]

