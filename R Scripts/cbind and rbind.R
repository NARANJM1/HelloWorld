#cbind and rbind

#the rbind() (row bind) and cbind()
#(column bind) functions let you
#add rows or columns to a matrix

> one
[1] 1 1 1 1
> z
[,1] [,2] [,3]
[1,] 1 1 1
[2,] 2 1 0
[3,] 3 O 1
[4,] 4 0 0
> cbind(one,z)
[1,]1 1 1 1
[2,]1 2 1 0
[3,]1 3 0 1
[4,]1 4 O O
