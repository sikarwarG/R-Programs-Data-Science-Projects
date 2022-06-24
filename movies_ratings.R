#-----------------Section 6 advanced visualisation
getwd()
movies_data<- read.csv(file.choose())
head(movies_data,n=3)
summary(movies_data)
str(movies_data)
ncol(movies_data)
nrow(movies_data)
#------if u want to change column names according to your desire use colnames function----
colnames(movies_data)<- c("Film","Genre","Critics_Rating","Audience_Rating","Budget(Million)","Year")
summary(movies_data)
head(movies_data)
str(movies_data)
#----------------convert non factor variable into factor variable like year in this problem is not factor but we will convert it a factor
factor(movies_data$Year)
movies_data$Year<-factor(movies_data$Year)
summary(movies_data)
str(movies_data)
