myfirst_vector<- c(2,4,5,8,10,34,32,14,41,65)
myfirst_vector
length(myfirst_vector)
is.numeric(myfirst_vector)
mysecond_vector<-c("a","b","c","2")
#trace(myfirst_vector)
#dim(myfirst_vector)
?transpose
transpose(mysecond_vector)
t(mysecond_vector)
is.numeric(mysecond_vector)
is.character(mysecond_vector)
is.integer(myfirst_vector)
is.double(myfirst_vector)
v3<-c(1L,2L,4L)
is.integer(v3)
v4=c("zc","bn",9)
v4
seq(1,11)#sequence like":"
seq(1,11,3) #step 3
1:11
rep(1,4)           #replicate
v4=c(6,4,1)
z<-rep(v4,25)
v5<- c(1,9,15,65,58)
v5[2]         #square bracket
v5[0]
v5[-2]
v<-v5[-1]
v
v5[1:4]
v5[2:4]
w<- c(89,87,52,3,6,45,50)
w[c(-2,-3)]
w
w[c(0)]
w[12]
w[1]
w[length(w)]
LETTERS[seq( from = 1, to = 10 )]
LETTERS[seq("a","z")]
w[-1]
dim(w)
dim.data.frame(w)
w[8:9]<-c(11,15)
w[8]<-15
w

