# Exercise 1: Creating data frames

# Create a vector of the number of points the Seahawks scored in the first 4 games of their season
# Hint: (google "Seahawks scores")
number.of.points <- c(48,20,26,17)
# Create a vector of the number of points the Seahawks have allowed to be scored against them in the first 4 games
points.against <- c(17,13,13,13)

# Combine your two vectors into a dataframe
all.scores <- data.frame(number.of.points,points.against,stringsAsFactors = FALSE)

# Create a new column "diff" that is the difference in points
diff <- c(abs(number.of.points - points.against))
all.scores <- data.frame(all.scores,diff)
# Create a new column "won" which is TRUE if the Seahawks wom
won <- c(TRUE,TRUE,TRUE,TRUE)
all.scores <- data.frame(all.scores,won)
# Create a vector of the opponents
opponents <- c("Chargers","Vikings","Chiefs","Raiders")

# Assign your dataframe rownames of their opponents
rownames(all.scores) <- opponents
colnames(all.scores) <- 1:4
