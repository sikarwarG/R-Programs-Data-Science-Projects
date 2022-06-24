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



