#In contrast to a vector, in which all elements must be
#of the same mode, R’s list structure can combine
#objects of different types:

j <- list(name="Joe", salary=SSOOO, union=T)

> z <- vector(mode="list")
> z[["abc"]] <- 3
> z
$abc
[1] 3
