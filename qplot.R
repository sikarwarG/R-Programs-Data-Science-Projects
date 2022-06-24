#-------------------------------------------------- basic operations of data frames

demographic[1:4,] #---------subsetting
demographic[5:8,]
demographic[c(4,5,6),]

#-------------remember how the [] work
demographic[1,]
is.data.frame(demographic[1,]) # not for[] is true so no use of drop=F
demographic[,1]
is.data.frame(demographic[,1])##-----like matrix so use of drop=F
demographic[,1,drop=F]
is.data.frame(demographic[,1,drop=F])#--------see the code

#--------multiplication of column
mynewcolumn<-demographic$Internet.users*demographic$Birth.rate
head(demographic)
demographic$mynewcolumn<-demographic$Internet.users*demographic$Birth.rate #----------new column addition
head(demographic)
# test of knowledge
demographic$xyz<-1:5 #------add new column and recycling of vector
head(demographic,n=12)

# removal of new column created by me
head(demographic)
ncol(demographic)
demographic$xyz<-NULL
demographic$mynewcolumn<-NULL
head(demographic)
ncol(demographic)
#---------------------filtering data stats
head(demographic)
filter<- demographic$Internet.users<2
demographic[filter,]
demographic[demographic$Birth.rate>40,]
demographic[demographic$Birth.rate>40 & demographic$Internet.users<2 ,]
demographic[demographic$Income.Group=="High income" & demographic$Internet.users>90,]
# find information about MALTA
demographic[demographic$Country.Name=="Malta",]
#----------------------------------qplot
install.packages(qplot) #----------------------use capital I to take care of legend
library(ggplot2)
?qplot
demographic
qplot(data=demographic,x=Internet.users)
qplot(data=demographic,x=Internet.users,y=Birth.rate)
qplot(data=demographic,x=Income.Group,y=Birth.rate,size=I(1.5),geom = "boxplot")
qplot(data=demographic,x=Internet.users,y=Birth.rate,size=I(3))
qplot(data=demographic,x=Birth.rate,y=Internet.users,size=I(1.5),color=I("red"))
qplot(data=demographic,x=Birth.rate,y=Internet.users,size=I(1.5),color=I("red"))
qplot(data=demographic,x=Birth.rate,y=Internet.users,size=I(1.5),color=Income.Group)
qplot(data=demographic,x=Birth.rate,y=Internet.users,size=I(1.5),color=Regions_2012_Dataset)

#-----------------creating data frames
mynewdata<- data.frame(Countries_2012_Dataset,Codes_2012_Dataset,Regions_2012_Dataset)
mynewdata
colnames(mynewdata)<-c('Country','Code','Region')
head(mynewdata)
rm(mynewdata)
#--------------another way to change column name in data frame
mynewdata<- data.frame(Country=Countries_2012_Dataset,Code=Codes_2012_Dataset,Region=Regions_2012_Dataset)
head(mynewdata)
tail(mynewdata)
summary(mynewdata)
#---------------------merging of data frames
merged<-merge.data.frame(demographic,mynewdata,by.x="Country.Code",by.y="Code")
head(merged)
merged$Country<- NULL
head(merged)
#---------shape.......type shape in R in google to know more
qplot(data=merged,x=Birth.rate,y=Internet.users,size=I(4),color=Region,size=I(3),shape=I(15))
# alpha for transferency and main for chart title
qplot(data=merged,x=Birth.rate,y=Internet.users,size=I(4),color=Region,size=I(3),shape=I(17),alpha=I(0.35),
      main="Internet users Vs Birth rate")







