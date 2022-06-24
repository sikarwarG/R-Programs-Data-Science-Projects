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
#-----------------------------filtering of data
