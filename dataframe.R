# Dataframe examples

## Creation of a dataframe
df <- data.frame(x=c(1, 2, 3), y=c(4, 5, 6))

# Create an empty dataframe from another one
empty_df = df[FALSE,]

# Create empty dataframe by specifiing columns
df <- data.frame(
  "x" = double(),
  "y" = character(),
  "z" = numeric()
)

## Get column
df$x
df$y

## Get columns types
sapply(df, class)

## Add row
df[nrow(df) + 1,] <- list(4.1, "a", 5)

