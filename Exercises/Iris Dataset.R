#Exercise: create a subset of the iris dataset that contains 10 different samples of each species of flower.
#Change the row names of the sub dataset as the name of the corresponding species followed by a number [1-10] e.g. virginica_1

# Load the dplyr package
library(dplyr)

# Load the iris dataset
data(iris)

# Create a subset with 10 samples of each species
subset_iris <- iris %>%
  group_by(Species) %>%
  sample_n(size = 10, replace = FALSE) %>%
  ungroup()

# Add row names with the format "species_number"
row_names <- paste0(subset_iris$Species, "_", rep(1:10, each = 3))
rownames(subset_iris) <- row_names

# View the resulting subset
subset_iris
