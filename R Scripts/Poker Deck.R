suits <- c("Hearts", "Diamonds", "Clubs", "Spades")
color <- c("Red", "Black")
values <- c("2", "3", "4", "5", "6", "7", "8", "9", "10",
            "Jack", "Queen", "King", "Ace")

cards <- expand.grid(Value = values, Suit = suits)
write.csv(cards, "deck.csv", row.names = FALSE)

read_deck <- function(file) {
  deck <- read.csv(file)
  return(deck)
}

shuffle_deck <- function(deck) {
  shuffled_deck <- deck[sample(nrow(deck)), ]
  return(shuffled_deck)
}

deal_cards <- function(deck, n) {
  dealt_cards <- deck[1:n, ]
  remaining_deck <- deck[-(1:n), ]
  return(list(dealt_cards, remaining_deck))
}

play_blackjack <- function() {
  deck <- read_deck("deck.csv")
  shuffled_deck <- shuffle_deck(deck)

  user_score <- 0
  user_hand <- data.frame()

  while (TRUE) {
    cat("Your current hand:\n")
    print(user_hand)

    myVar <- readline(prompt = "Do you want one more card? (Y/N) ")
    if (toupper(myVar) == "Y") {
      if (nrow(shuffled_deck) == 0) {
        cat("No more cards in the deck.\n")
        break
      }

      card_dealt <- deal_cards(shuffled_deck, 1)[[1]]
      user_hand <- rbind(user_hand, card_dealt)

      card_value <- card_dealt$Value
      if (card_value == "Ace") {
        card_value <- 11  # In blackjack, Ace can be 1 or 11
      } else if (card_value %in% c("Jack", "Queen", "King")) {
        card_value <- 10
      } else {
        card_value <- as.numeric(card_value)
      }
      user_score <- user_score + card_value

      if (user_score > 21) {
        cat("Bust! Your score:", user_score, "\n")
        break
      }
    } else {
      cat("You chose to stop.\n")
      break
    }
  }

  if (user_score <= 21) {
    cat("Your final score:", user_score, "\n")
  }

  return(user_score)
}

num_games <- 5
results <- data.frame(Game = 1:num_games, Result = rep(NA, num_games))

for (i in 1:num_games) {
  cat("Game", i, "\n")
  result <- play_blackjack()
  results$Result[i] <- result
}

write.csv(results, "blackjack_results.csv", row.names = FALSE)

