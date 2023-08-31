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
