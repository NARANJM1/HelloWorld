#Coding in R

a <- 3 * 4

#numeric

b <- 10.5

#integer

c <- 1000L

#complex

d <- 9i + 3

#character/string

e <-"R is excitining"

#logical/boolean

f <- TRUE

str1 <- "Hello"
str2 <- "World"

paste(str1, str2)

paste0(str1, str2)

str <- "We are the so-called \"Vikings\", from the north"

10 > 9 #TRUE because 10 is greater than 9
10 == 9 #FALSE because 10 is not equal to 9
10 < 9 #FALSE because 10 is greater than 9

#IF ELSE

if(b > a){
  print("b is greater than a")
}

if(b > a){
  print("b is greater than a")
} else if (a== b){
  print("a and b are equal")
}

if (a > b & c > a){
  print("Both conditions are true")
}

if (a > b | a > c){
  print("At least one of the conditions is true")
}

#Loops

i <- 1
while (i < 6) {
  print(i)
  i <- i + 1
}

for (x in 1:10){
  print(x)
}

#Functions

my_function <- function(fname){
  paste(fname, "Naranjo")
}

my_function("Peter")
my_function("Lois")
my_function("Miguel")
