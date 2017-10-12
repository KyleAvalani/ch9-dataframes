# Exercise 4: Gates Foundation Educational Grants

# Read data into a variable called `grants` using the `read.csv` function
# Make sure *not* to read the strings as factors
setwd("~/Desktop/Testing/ch9-dataframes/exercise-4/")
grants <- read.csv('./data/gates_money.csv',stringsAsFactors=FALSE)
# Use the View function to look at your data
View(grants)

# Create a variable `spending` as the `total_amount` column of the dataset
spending <- grants[['total_amount']]

# Confirm that your `spending` variable is a vector using the `is.vector` function
is.vector(spending)

# Create a variable `org` as the `organization` column of the dataset.
org <- grants[['organization']]

### Now you can ask some more interesting questions about the dataset.  Store your answers in variables ###

# What was the mean grant value?
mean.grant.value <- mean(spending)

# What was the dollar amount of the largest grant?
largest.grant.amount <- max(spending)

# What was the dollar amount of the smallest grant?
smallest.grant.amount <- min(spending)

# Which organization received the largest grant?
org[spending == largest.grant.amount]

# Which organization received the smallest grant?
org[spending == smallest.grant.amount]

# How many grants were awarded in 2010?
