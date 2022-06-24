# named vectors
charlie<- 1:6
charlie
# give names
names(charlie)<- c('a','b','c','d','e','f')
names(charlie)
charlie['e']
# clear names
names(charlie)<- NULL
charlie
#-------------------------------------

# naming matrix dimensions

temp.vect<- rep(c('A','B','zZ'),each=4)
temp.vect
bravo<- matrix(temp.vect,4,3)
bravo
rownames(bravo)<-c('how','r','u','kya')
colnames(bravo)<-c('X','Y','Z')
bravo
bravo['r','Y']<-0
bravo
# remove row names
rownames(bravo)<-NULL
bravo
