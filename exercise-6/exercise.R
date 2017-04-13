# Exercise 7: Husky Football 2015 Season
# Read in the Husky Football 2015 game data into a variable called `husky.games.2015`
husky.game.2015 <- read.csv('data/huskies_2015.csv', stringsAsFactors = FALSE)
View(husky.game.2015)

# Create a vector of the teams that the Huskies played against during that season
# Call this vector `not.huskies`. You'll need to convert this column to a vector
not.huskies <- as.vector(husky.game.2015$opponent)

# Create a vector of the their final scores for the games
# Call this variable `husky.scores`
husky.score <- husky.game.2015$uw_score

# Create 2 variables called `rushing.yards` and `passing.yards` to represent the yards the Huskies rushed and passed
rushing.yards <- husky.game.2015$rushing_yards
passing.yards <- husky.game.2015$passing_yards

# Create a variabled called `combined.yards` that is the total yardage of the Huskies for each game
combined.yards <- rushing.yards + passing.yards

# What is the score of the game where the Huskies had the most combined yards?
most.yards.score <- husky.score[rushing.yards + passing.yards == max(combined.yards)]

# Write a function `MostYardsScore` that takes in a dataframe parameter `games` and returns a descriptive sentence
# about the game that was played that had the most yards scored in it.
# Take note of the steps from above including the opposing team, score, and date the game was played
MostYardsScore <- function(games) {
  r.y <- games$rushing.yards
  p.y <- games$passing.yards
  combined.yards <- r.y + p.y
  max.yards <- max(combined.yards)
  score <- games$uw_score[combined.yards == max.yards]
  sentence <- paste("score is", score) #, "oppo is", oppo, "date is", date
  return (sentence)
}

sen <- MostYardsScore(husky.game.2015)
# What was the highest yardage game so far this season?
# Hint: Read in the dataset titled `huskies_2016.csv` and save it as a variable

