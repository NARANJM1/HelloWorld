#Use the function names()
#to assign names to elements in a
#list or vector

Name<- c ( "Manish" , "Amit" , "Amul")
RollNum<- c ( 23 , 24 , 25)
sample_list<- list ( Name,RollNum)
sample_list
names (sample_list)<-c ( "Name" , "Roll _Num" )
sample_list

#Use the functions colnames(), row.names() to retrieve and/or assign
#names to columns and rows (matrices and dataframes)

1r1s_copy <- 1r1s
colnames (iris_copy)
colnames (iris_copy)<- c ("sepalL" , "sepalw"
                           , "pet a 7 L 1f , "sepal L" , "sepa 7 L")
colnames (iris_copy)

#You can retrieve or change the
#names of a subset of elements
#by using []

iris_copy <- ir1s
colnames ( iris_copy) 5]
colnames ( iris_copy) 5] <- "f l owerspecies"
colnames ( iris_copy) 5]
