x<-rnorm(5)
x
# r specific programming looop
for(i in x){
  print(i)
}
print(x[1:5])
#conventional programming loop
for(j in 1:5){
  print(x[j])
}

#--------------------------------------2nd part
N<-1000000
a<-rnorm(N)
b<-rnorm(N)

# vectorised approach
c= a*b

#De-vectorised approach
d<-rep(NA,N)
for(i in 1:N){
  d[i]=a[i]*b[i]
}
# to check both results are right
c==d
d






