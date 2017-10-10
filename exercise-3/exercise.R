# Exercise 3: Vector and function practice

# Create a vector `marbles` with 6 different colors in it (representing marbles)
marbles <- c("red", "green", "blue", "yellow", "orange", "purple")

# Use the `sample` function to select a single marble
sample(marbles, 1, replace = FALSE)

# Write a function MarbleGame that does the following:
# - Takes in a `guess` of a marble color
# - Randomly samples a marble
# - Returns whether or not the person guessed accurately (preferrably a full phrase)
MarbleGame <- function(user.input) {
  random.marble <- tolower(sample(marbles, 1, replace = FALSE))
  if (tolower(user.input) %in% random.marble)
    return ("You got it right!")
  else 
    return ("Sorry, you got it wrong.")
}

# Play the marble game!


# Bonus: Play the marble game until you win, keeping track of how many tries you take
# 18 tries

## Double bonus(answer not provided): play the game 1000X (until you win) and track the average number of tries
# Is it what you expected based on the probability
# No, I thought that 1/6th of 1000 would result in about 167 attempts per win, but it's closer to 4-5 attempts
# per win.
tries <- 0
total.wins <- 0
total.tries <- 0 
for (trial in 1:1000) {
  message <- MarbleGame("yellow")
  if ("You got it right!" %in% MarbleGame("yellow")) {
    total.wins <- total.wins + 1
    total.tries <- total.tries + tries
    tries <- 0
  } else {
    tries <- tries + 1
  }
}
total.tries <- total.tries + tries
average.tries <- total.tries / total.wins