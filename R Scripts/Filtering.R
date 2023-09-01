> z <- c(5,2,-3,8)
> w <- z[Z*Z > 8]
> w
[ 1] 5 -3 8
> z <- c(5,2,-3,8)
> z
[1] 5 2 -3 8
> z*z > 8
[1] TRUE FALSE TRUE TRUE

> x <- c(6,1:3,NA,12)
> X
[1] 6 1 2 3 NA 12
> x[x > 5]
[1] 6 NA 12
> subset(x,x > 5)
[ 1] 6 12
