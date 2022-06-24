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
u<- ggplot(data=movies_data,aes(x=Critics_Rating,
                                y=Audience_Rating,color=Genre))
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
#-using facets

y<- ggplot(data=movies_data,aes(x=Budget))
y+geom_histogram(binwidth=10,aes(fill=Genre),color="Black")

y+geom_histogram(binwidth=10,aes(fill=Genre),color="Black")+
  facet_grid(Genre~.)


y+geom_histogram(binwidth=10,aes(fill=Genre),color="Black")+
  facet_grid(Genre~.,scales = "free")

# facets in scatter
w<-ggplot(data=movies_data,aes(x=Critics_Rating,y=Audience_Rating,color=Genre))
w+geom_point(size=3)+facet_grid(Genre~.,scales = "free")

w+geom_point(size=3)+facet_grid(.~Year,scales = "free")


w+geom_point(size=3)+facet_grid(Genre~Year,scales = "free")


w+geom_point(aes(size=Budget))+facet_grid(Genre~Year,scales = "free")+geom_smooth(fill=NA)+xlim(50,100)+ylim(0,80)


#-------coordinates
#limits
#zoom

x<- ggplot(data=movies_data,aes(x=Critics_Rating,y=Audience_Rating,color=Genre))
x+geom_point()

# xaxis and y axis limits

x+geom_point()+xlim(50,100)+ylim(40,80)+geom_smooth(fill=NA)


# wouldnt work always############error
y<-ggplot(data=movies_data,aes(x=Budget))
y+geom_histogram(binwidth = 10,aes(fill=Genre),color="Black")

y+geom_histogram(binwidth = 10,aes(fill=Genre),color="Black")+ylim(40,80) #error

y+geom_histogram(binwidth = 10,aes(fill=Genre),color="Black")+ylim(0,50) #error

#------------perfect way to do it
y+geom_histogram(binwidth = 10,aes(fill=Genre),color="Black")+coord_cartesian(ylim = c(0,50))
####################----------------improvement1

w+geom_point(aes(size=Budget))+facet_grid(Genre~Year,scales = "free")+geom_smooth(fill=NA)+coord_cartesian(ylim = c(0,100))

#----------xlabel and ylabel---------------------------------

o<- ggplot(data=movies_data,aes(x=Budget))
h<- o+ geom_histogram(binwidth = 10,aes(fill=Genre),color="Black")

#-----------xlabels

h+xlab("Money axis")+ylab("No of Movies")

#-------------label formatting with size

h+xlab("Money axis")+ylab("No of Movies")+ theme(axis.title.x = element_text(size=30,color="Dark Green"),axis.title.y = element_text(size=30,color="Red"))

#------------------tick mark formatting------------------

h+xlab("Money axis")+ylab("No of Movies")+
  theme(axis.title.x = element_text(size=30,color="Dark Green"),
        axis.title.y = element_text(size=30,color="Red"),axis.text.x = element_text(size=20),
           axis.text.y = element_text(size=20))



#---------------legend formatting--------------------------


h+xlab("Money axis")+ylab("No of Movies")+
  theme(axis.title.x = element_text(size=30,color="Dark Green"),
        axis.title.y = element_text(size=30,color="Red"),axis.text.x = element_text(size=20),
        axis.text.y = element_text(size=20),
        legend.title = element_text(size=20),
        legend.text = element_text(size=20))

#--------------------position of legend----------



h+xlab("Money axis")+ylab("No of Movies")+
  theme(axis.title.x = element_text(size=30,color="Dark Green"),
        axis.title.y = element_text(size=30,color="Red"),
        axis.text.x = element_text(size=20),
        axis.text.y = element_text(size=20),
        legend.title = element_text(size=20),
        legend.text = element_text(size=20),
        legend.position = c(1,1),legend.justification = c(1,1))




h+xlab("Money axis")+ylab("No of Movies")+
  theme(axis.title.x = element_text(size=30,color="Dark Green"),
        axis.title.y = element_text(size=30,color="Red"),
        axis.text.x = element_text(size=20),
        axis.text.y = element_text(size=20),
        legend.title = element_text(size=20),
        legend.text = element_text(size=20),
        legend.position = c(0,1),legend.justification = c(0,1))




h+xlab("Money axis")+ylab("No of Movies")+
  theme(axis.title.x = element_text(size=30,color="Dark Green"),
        axis.title.y = element_text(size=30,color="Red"),
        axis.text.x = element_text(size=20),
        axis.text.y = element_text(size=20),
        legend.title = element_text(size=20),
        legend.text = element_text(size=20),
        legend.position = c(0.5,0.5),legend.justification = c(0.5,0.5))


#---------------------title plot----------

h+xlab("Money axis")+ylab("No of Movies")+ ggtitle("Movies Vs Budget")+
  theme(axis.title.x = element_text(size=30,color="Dark Green"),
        axis.title.y = element_text(size=30,color="Red"),
        axis.text.x = element_text(size=20),
        axis.text.y = element_text(size=20),
        legend.title = element_text(size=20),
        legend.text = element_text(size=20),
        legend.position = c(1,1),legend.justification = c(1,1),
        plot.title = element_text(size=40,color="DarkBlue",family="Courier"))
        


