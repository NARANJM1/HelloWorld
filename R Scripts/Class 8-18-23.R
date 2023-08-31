library(tidyverse)
library(datasets)

z <- vector(mode = "list")
z[["abc"]] <- starwars
z [["secondVar"]] <- seq(2,100,by=3)

names(z)
names(z) <- c("var1", "var2")

iris_copy <- iris
colnames(iris_copy)[5]
colnames(iris_copy)[5] <- "flowerSpecies"
colnames(iris_copy)[5]

colnames(iris_copy)[5]
colnames(iris_copy)[5] <- "flowerSpecies"
colnames(iris_copy)[5]

row.names(iris_copy)[5]
row.names(iris_copy)[5] <- "Setosa"
row.names(iris_copy)[5]