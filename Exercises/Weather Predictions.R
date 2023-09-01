#Suppose you have a binary weather daily data (in a vector x) where 1
#means a day with rain, 0 means a day with no rain.
#1. Write a code to predict whether tomorrow is going to rain or not. Use
#the k past days to predict (with k >= 3 ).
#• your prediction will be 1 if at least half of the k previous days were
#rainy days. It will be 0 otherwise.
#2. Write a code to find the accuracy of your predictions.
#• E.g. if x = (1,1,0,1,0,1) and k =3 then you predict (1,1,0,1):
#  ― 1 for day 4 (days 1 to 3 were 1,1,0)
#― 1 for day 5 (days 2 to 4 were 1,0,1) and so on…
#• The accuracy is 1/3 because from days 4 to 6 only 1 prediction was
#correct

x <- c(1, 0, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1)
k <- 2
accuracy <- calculate_accuracy

predict_rain <- function(x, k) {
  predictions <- c()
  for (i in (k + 1):length(x)) {
    window <- x[(i - k):(i - 1)]
    rainy_days <- sum(window)
    if (rainy_days >= k / 2) {
      predictions <- c(predictions, 1)
    } else {
      predictions <- c(predictions, 0)
    }
  }
  return(predictions)
}

calculate_accuracy <- function(true_labels, predicted_labels) {
  correct_predictions <- sum(true_labels == predicted_labels)
  accuracy <- correct_predictions / length(true_labels)
  return(accuracy)
}

predicted <- predict_rain(x, k)

true_labels <- x[(k + 1):length(x)]

accuracy <- calculate_accuracy(true_labels, predicted)

hist(
  x,
  main = "Weather Forecast",
  xlab = "Accuracy",
  ylab = "Rainy Days",
  col = "light blue",
  border = "black",
  labels = T,
  xpd = TRUE
)
