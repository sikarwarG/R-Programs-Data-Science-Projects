#Import the Data
songs <- read.csv('C://Users//Dell//Desktop//R tutorials//kaggle_practice//top50.csv')

#Data Exploration
ncol(songs)
nrow(songs)
head(songs,n=3)
str(songs)
library("ggplot2")
which(songs=="Genre")
ggplot(songs,aes(x=Danceability,y=Genre,color=Energy,size=Beats.Per.Minute))+geom_point()

ggplot(songs,aes(x=Danceability,y=Genre))+geom_boxplot()

ggplot(songs,aes(x=Danceability,y=Genre,size=Popularity ))+geom_point()

ggplot(songs, aes(x = Valence., y = Popularity, size = Beats.Per.Minute, color = Genre))+
  facet_wrap(~Artist.Name)+
  geom_point()+
  theme_minimal()



ggplot(songs, aes(x = Popularity, y = Valence., 
                color = Beats.Per.Minute, alpha = Speechiness., 
                fill = Beats.Per.Minute))+
  geom_bar(stat = 'identity')+
  coord_polar()+
  facet_wrap(~Genre)+
  theme_minimal()





ggplot(songs, aes(x = Artist.Name, y = Energy, 
                     color = Beats.Per.Minute, 
                     alpha = Speechiness., fill = Genre))+
  geom_bar(stat = 'identity')+
  coord_polar()+
  theme_minimal()











