#Exercise: delete the number 5 and 13 from the vector x
#x <- c(88,5,12,13)

# Original vector x
x <- c(88, 5, 12, 13)

# Create a logical vector to identify elements to keep
elements_to_keep <- !(x %in% c(5, 13))

# Use the logical vector for subsetting
new_x <- x[elements_to_keep]

# Print the updated vector
cat("Updated vector x:", new_x, "\n")

