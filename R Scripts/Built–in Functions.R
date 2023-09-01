#Function              Description
#abs(x)                absolute value
#sqrt(x)               square root
#ceiling(x)            ceiling{3.475) is 4
#floor(x)              floor{3.475) is 3
#trunc(x}              trunc(5.99) is 5
#round(x, digits=n)    round(3.475, digits=2) is 3.48
#signif(x, digits=n}   signif(3.475, digits=2) is 3.5
#cos(x) sin(x), tan(x) also acos(x), cosh(x). acosh{x), etc.
#log(x)                natural logarithm
#log10(x)              common logarithm
#exp(x)                e^x
#median(x)             median
#range(x)              range
#sum(x)                sum
#min(x)                minimum
#max(x)                maximum
#seq(from , to, by)    generate a sequence indices<- seq(1, 10,2)
                       #indices is c(1, 3, 5, 7, 9)
#rep(x, ntimes)        repeat x n times y <- rep(1:3, 2)
                       # y is c(1, 2, 3, 1, 2, 3)
#cut(x, n)             divide continuous variable in factor with n levels
                       #y <- cut(x, 5)
#diff(x, lag= 1)       lagged differences, with lag indicating which lag to use
#sd(x)                 standard deviation of object(x). also look at var(x) for
#                      variance and mad(x) for median absolute deviation.

#scale(x,center=TRUE,scale=TRUE}  #column center or standardize a matr ix.

#mean(x, trim=O,     na.rm= FALSE}
#mean of object x
# trimmed mean, removing any missing values and
# 5 percent of highest and lowest scores
#mx <- mean{x,trim=.05,na.rm= TRUE)

