?read.csv
#-------method1
demographic<-read.csv(file.choose())

head(demographic)
#--------method2----set working directory and read data
getwd()
setwd("C:\\Users\\Dell\\Desktop\\R tutorials")

getwd()


country_wb<- read.csv("P2-Demographic-Data.csv")
country_wb
#-----------exploring data---

nrow(demographic)
ncol(demographic)
head(demographic,n=5)

tail(demographic,n=8)
str(demographic) # str # runif
summary(demographic)

#-----------------------------Using the $ sign
demographic
head(demographic)
demographic[3,3]
demographic[3,"Birth.rate"]
demographic["Angola",3]     #--------------Not any row name of angola

demographic$Internet.users[2] #----------usage for $ to get whole column
demographic$Internet.users[3]
demographic[,"Internet.users"]
levels(demographic$Income.Group)
levels(demographic$Income.Group)

