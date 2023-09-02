#Exercise: Use the function sample() to simulate rolling a single die and rolling a pair of dice.
#Check the parameter replace.
#What should its value be in the 2 dice simulation?
#Hint:  • use ? To access the help of the function.

# Simulate rolling a single die
single_die_roll <- sample(1:6, size = 1, replace = TRUE)
cat("Result of rolling a single die:", single_die_roll, "\n")

# Simulate rolling a pair of dice
pair_of_dice_roll <- sample(1:6, size = 2, replace = TRUE)
cat("Results of rolling a pair of dice:", pair_of_dice_roll[1], "and", pair_of_dice_roll[2], "\n")
