# Exercise 5: Gates Foundation Educational Grants

# Read data into a variable called `grants` using the `read.csv` function
grants <- read.csv("data/money.csv", stringsAsFactors = FALSE)
# Use the View function to look at your data

# Create a variable `spending` as the `total_amount` column of the dataset
spending <- grants$total_amount

# Confirm that your `spending` variable is a vector using the `is.vector` function
is <- is.vector(spending)

# Create a variable `org` as the `organization` column of the dataset.
# Unfortunately, it will not be a vector by default, so you must transform it using the as.vector function
org <- grants$organization

### Now you can ask some more interesting questions about the dataset.  Store your answers in variables ###

# What was the mean grant value?
mean.spending <- mena(spending)

# What was the dollar amount of the largest grant?
max.spending <- max(spending)

# What was the dollar amount of the smallest grant?
min.spending <- min(spending)

# Which organization received the largest grant?
largest.org <- org[spending == max.spending]

# Which organization received the smallest grant?
smallest.org <- org[spending == min.spending]

# How many grants were awarded in 2010?
# length(grants$start_year == 2010)
length(spending[grants$start_year == 2010])
