
myplot<-function(Data,rows=1:10){
  data<- Data[rows,,drop=F]
  matplot(t(data),type = 'b',pch = 10:18,col = c(1:4,6))
  legend('bottomleft','inset=0.01',legend=Players[rows],pch = 10:15,col = c(1:4,6))
  
}
#----------salary
myplot(Salary)
myplot(Salary/Games)
myplot(Salary/FieldGoals)

#-------------in game matrix
myplot(MinutesPlayed)
myplot(Games)
#--------------normalised
myplot(FieldGoals/Games)
myplot(FieldGoals/FieldGoalAttempts)
myplot(FieldGoals/MinutesPlayed)
myplot(MinutesPlayed/Games)
myplot(Points/FieldGoals)







