#--------------------------Homework movie domestic gross %------------------#
# Import required data to analyse
moviesdata<- read.csv(file.choose())
# See head and str of data
head(moviesdata,n=3)
tail(moviesdata,n=3)
str(moviesdata)
ncol(moviesdata)
split(moviesdata,moviesdata$Genre)
#---cool data
library(ggplot2)

ggplot(data=moviesdata, aes(x=Day.of.Week)) + geom_bar()

# action # adventure # animation # comedy # drama
filter1<- (moviesdata$Genre=="action")|(moviesdata$Genre=="adventure")|(moviesdata$Genre=="animation")|(moviesdata$Genre=="comedy")|(moviesdata$Genre=="drama")
 filter1
filt2 <- (moviesdata == "Buena Vista Studios") | (moviesdata== "WB") | (moviesdata=="Fox") | (moviesdata=="Universal") | (moviesdata== "Sony") |(moviesdata== "Paramount Pictures")
 filt2
#Apply the row filters to the dataframe
mov2 <- moviesdata[filter1 & filt2,]
mov2
# head(mov2)

# col number of Gross...mill.
which(colnames(moviesdata)=="Gross...mill.")
# ans 9
which(colnames(moviesdata)=="US...mill.")
# ans 17

moviesdata_action<- subset(moviesdata,Genre=="action")
moviesdata_adventure<-subset(moviesdata,Genre=="adventure")
moviesdata_animation<-subset(moviesdata,Genre=="animation")
moviesdata_comedy<- subset(moviesdata,Genre=="comedy")
moviesdata_drama<-subset(moviesdata,Genre=="drama")
moviesdata_drama
moviesdata_x<- c(moviesdata_action,moviesdata_adventure,moviesdata_animation,
                 moviesdata_comedy,moviesdata_drama)

moviesdata_x
# studioes
st1<-subset(moviesdata== "Buena Vista Studios")
st2<-subset(moviesdata=="WB")
st3<-subset(moviesdata=="Universal")
st4<- subset(moviesdata=="Fox")
st5<-subset(moviesdata=="Sony")
st6<-subset(moviesdata=="Paramount Pictures")

Studio<- c(st1,st2,st3,st4,st5,st6)
Studio
data<-moviesdata(moviesdata_x & Studio,)


#-----------------------ggplot
u<- ggplot(data=mov2, aes(x=Genre,y=Gross...US))

u+geom_point()


u+geom_point()+ geom_jitter()

