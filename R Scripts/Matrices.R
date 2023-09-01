#MATRICES

> y <- matrix(c(1,2,3,4),nrow=2,ncol=2)
> y
[,1] [,2]
[1,] 1 3
[2,] 2 4

> y <- matrix(c(1,2,3,4),nrow=2)
> y
[,1] [,2]
[1,] 1 3
[2,] 2 4

> y <- matrix(nrow=2,ncol=2)
> y[1,1] <- 1
> y[2,1] <- 2
> y[1,2] <- 3
> y[2,2] <- 4

> m <- matrix(c(l,2,3,4,5,6),nrow=2,byrow=T)
> m
[,1] [,2] [,3]
[1,] 1 2 3
[2,] 4 5 6
