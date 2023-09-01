#Exercise: delete the number 5 and 13 from the vector x

x <- c(88,5,12,13)
x <- c(x[1:3],168,x[4])
x
[1] 88 5 12 168 13
