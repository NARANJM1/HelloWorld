#Exercise: Given the following vector representing the gender of 10 people (Male, Female, Infant)
#g <- (“M”, “F”, “M”, “M”, “I”, “F” “M”, “F”, “M”, “I”)
#Write a code to identify the index of all females and infants in the vector

# Given vector representing gender
g <- c("M", "F", "M", "M", "I", "F", "M", "F", "M", "I")

# Find the indices of females and infants
female_indices <- which(g == "F")
infant_indices <- which(g == "I")

# Print the indices
cat("Indices of Females:", female_indices, "\n")
cat("Indices of Infants:", infant_indices, "\n")
