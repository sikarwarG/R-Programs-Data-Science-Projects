Games
rownames(Games)
colnames(Games)
Games['JoeJohnson','2009']
FieldGoals
# fields goals per game
FGPG<- round(FieldGoals/Games,1)
FGPG
effectiveness<- round(FieldGoals/FieldGoalAttempts,1)*100
effectiveness
max(effectiveness)
min(effectiveness)

f <- function(vector=1:3){
  
  vector * 5
  
}
f() + f(c(1,1,1))

