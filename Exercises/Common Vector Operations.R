#Exercise: Create a vector z with n elements (use a variable n to define the vector).
#Create a copy of z but remove the last element by using the function length.

# Define the number of elements n
n <- 5

# Create a vector z with n elements
z <- 1:n

# Create a copy of z without the last element
z_copy <- z[1:(length(z) - 1)]

# Print the original and copied vectors
cat("Original z:", z, "\n")
cat("Copy of z without the last element:", z_copy, "\n")
