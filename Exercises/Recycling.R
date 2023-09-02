#Exercise: What do you think is the outcome of the code > c(1,2,4) + c(6,0,9,20,22)
#[1] 7 2 13 21 24
#> x
#[,1] [,2]
#[1,] 1 4
#[2,] 2 5
#[3,] 3 6
#> x+c(1,2)?
#Code it to verify if your intuition was correct

# Calculate c(1,2,4) + c(6,0,9,20,22)
result1 <- c(1,2,4) + c(6,0,9,20,22)

# Define the matrix x
x <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 3, ncol = 2)

# Calculate x + c(1,2)
result2 <- x + c(1,2)

# Print the results
cat("Result of c(1,2,4) + c(6,0,9,20,22):", result1, "\n")
cat("Result of x + c(1,2):\n", result2, "\n")


