#A data frame is like a matrix, with a two-dimensional rows-and columns
#structure. However, it differs from a matrix in that each column may have
#a different mode.

>kids<- c("Jack","Jill")
>ages<- c(12,10)
> d <- data.frame(kids,ages,stringsAsFactors=FALSE)
> d # matrix-like viewpoint
kids ages
1 Jack 12
2 Jill 10

#They can be accessed via component index values or component names:

> d[[1]]
[1] "Jack" "Jill"
> d$kids
[1] "Jack" "Jill"

#Or as a matrix-like

> d[,1]
[1] "Jack" "Jill"
