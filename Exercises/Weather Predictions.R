#Suppose you have a binary weather daily data (in a vector x) where 1 means a day with rain, 0 means a day with no rain.

#1.Write a code to predict whether tomorrow is going to rain or not. Use the k past days to predict (with k >= 3 ).
#Your prediction will be 1 if at least half of the k previous days were rainy days.
#It will be 0 otherwise.
#2. Write a code to find the accuracy of your predictions.
#E.g. if x = (1,1,0,1,0,1) and k =3 then you predict (1,1,0,1):
#― 1 for day 4 (days 1 to 3 were 1,1,0)
#― 1 for day 5 (days 2 to 4 were 1,0,1) and so on…
#The accuracy is 1/3 because from days 4 to 6 only 1 prediction was correct

# Binary weather daily data (1 for rain, 0 for no rain)
x <- c(1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0)
length_x <- length(x)
cat("Length of x:", length_x, "\n")

# Set a valid value for k (number of past days to consider). Adjust this value as needed
k <- c(3)
length_k <- length(k)

# Function to make predictions
predict_rain <- function(data, k) {
  n <- length(data)
  predictions <- numeric(n - k)

  for (i in 1:(n - k)) {
    past_days <- data[i:(i + k - 1)]
    prediction <- ifelse(sum(past_days) >= k / 2, 1, 0)
    predictions[i] <- prediction
  }

  return(predictions)
}

# Make predictions
predictions <- predict_rain(x, k)

# True values for comparison (shifted by one day)
true_values <- x[(k + 1):length(x)]

# Calculate accuracy
correct_predictions <- sum(predictions == true_values)
total_predictions <- length(predictions)
accuracy <- correct_predictions / total_predictions

# Print predictions and accuracy
cat("Predictions:", predictions, "\n")
cat("True Values (shifted):", true_values, "\n")
cat("Accuracy:", accuracy, "\n")
