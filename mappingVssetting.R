#-----------------Section 6 advanced visualisation
getwd()
movies_data<- read.csv(file.choose())
head(movies_data,n=3)
summary(movies_data)
str(movies_data)
ncol(movies_data)
nrow(movies_data)
#------if u want to change column names according to your desire use colnames function----
colnames(movies_data)<- c("Film","Genre","Critics_Rating","Audience_Rating","Budget","Year")
summary(movies_data)
head(movies_data)
str(movies_data)
#----------------convert non factor variable into factor variable like year in this problem is not factor but we will convert it a factor
factor(movies_data$Year)
movies_data$Year<-factor(movies_data$Year)
summary(movies_data)
str(movies_data)
#-------------------------aesthetics and ggplot
library(ggplot2)
ggplot(data=movies_data,aes(x=Critics_Rating,y=Audience_Rating))
#--------------------------add geometry
ggplot(data=movies_data,aes(x=Critics_Rating,y=Audience_Rating))+
  geom_point()

#---------------------------add color
ggplot(data=movies_data,aes(x=Critics_Rating,y=Audience_Rating,
                            color=Genre))+
  geom_point()
#-----------------------------add size----------------add title and adjust its position
ggplot(data=movies_data,aes(x=Critics_Rating,y=Audience_Rating,
                            color=Genre,size=Budget ))+
  geom_point()+ ggtitle("Audience Vs Critics")+ 
  theme(plot.title = element_text(hjust=0.5))
#----------------------------------------------plotting with layers
p<-ggplot(data=movies_data,aes(x=Critics_Rating,y=Audience_Rating,
                               color=Genre,size=Budget ))

#--------------point
p+geom_point()
#---------------line
p+geom_line() #-------------------non-sense
#------------------multiple layers
p+geom_point()+geom_line()

p+geom_line()+geom_point()
#----------------------------overriding
# ex1
p+geom_point(aes(color=Budget))
# ex2
p+geom_point(aes(size=Critics_Rating))
# p remains same
p+geom_point()
# change x axis---# ex3
p+geom_point(aes(x=Budget))+xlab("Budget(Millions)")
#--------change line size
p+geom_line(size=1)+geom_point()
#-----------------------------------
ggplot(data=movies_data,aes(x=Budget,
                            color=Genre))+
  geom_bar(stat = "count",position="dodge",width=1)+ ggtitle("Audience Vs Critics")+ 
  theme(plot.title = element_text(hjust=0.5))

#-----------------------------

#---------------mapping vs setting
r<- ggplot(data=movies_data,aes(x=Critics_Rating,y=Audience_Rating))
r+geom_point()
# add color
# Mapping(what we have done so far)

r+geom_point(aes(color=Genre))

#Setting
r+geom_point(color="Blue")
# error bcoz it is mapping rather than setting-------no blue color like above

r+geom_point(aes(color="Blue"))


# mapping
r+geom_point(aes(color=Budget))

# setting
r+geom_point(size=10)
# error
r+geom_point(aes(size=10))




#-----------------
u<- ggplot(data=movies_data,aes(x=Critics_Rating,y=Audience_Rating,color=Genre))
u+geom_point()

#------------smoothing constant---------------geom= smooth
u+geom_point()+geom_smooth()

#------------------use fill= null
u+geom_point()+geom_smooth(fill=NA)


#-----------------box plot

v<-ggplot(data=movies_data,aes(x=Genre,y=Audience_Rating,color=Genre))
v+geom_boxplot(size=1.3)

v+geom_boxplot(size=1.3)+geom_point()
#------------------use jitter
#-----------------------------------------hack or tip to box plot
v+geom_jitter()+geom_boxplot(alpha=0.5)

v+ geom_boxplot()+geom_jitter()

