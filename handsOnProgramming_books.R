# sample
?sample()
die<-1:6
sample(die,1)
# not sure which names to use with functions
args(round)
round(3.1458,2)
round(3.1458)
round(3.58)
sample(die,3,replace = TRUE)
# function

my_dice_func<- function(){
  die<-1:6
  dice<- sample(die,2,replace = T)
  sum(dice)
}

my_dice_func()

# chapter two--------------------------

library("ggplot2")
x<- c(0.2,0.45,0.5,0.5,0.9,.2,0.2,0.5)
y<- x^3
?qplot
qplot(x,y,geom='auto',color='cyl')
z<- c(1,2,2,3,3,3,4,5,5,5,5)
qplot(z,binwidth=1,main='Plots for Practice',xlab='Blood')
qplot(z)

z2<-replicate(10000,my_dice_func())

qplot(z2,binwidth=1)
prob<- c(1/8,1/8,1/8,1/8,1/8,3/8)

my_dice_func<- function(){
  die<-1:6
  dice<- sample(die,2,replace = T,prob =c(1/8,1/8,1/8,1/8,1/8,3/8) )
  sum(dice)
}
my_dice_func()
z2<-replicate(10000,my_dice_func())
qplot(z2,binwidth=1)


