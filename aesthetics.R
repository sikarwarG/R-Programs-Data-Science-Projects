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








