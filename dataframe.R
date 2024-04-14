# Dataframe examples
# See https://bookdown.org/ael/rexplor/chap6.html

## Create empty dataframe by specifiing columns
df <- data.frame(
  "x" = double(),
  "y" = character(),
  "z" = numeric()
)

## Creation of a dataframe
df <- data.frame(
  x=c(1, 2, 3),
  y=c(4, 5, 6),
  z=c(7, 8, 9),
  weight=c(101.2, 40.4, 55.5)
)

## Create an empty dataframe from another one
empty_df = df[FALSE,]


## Get columns types
sapply(df, class)

## Add row
df[nrow(df) + 1,] <- list(100, 101, 105, 54.2)

## Transform a column to type factor
df$y <- factor(df$y)

## Get a subset, take columns 2 and 3
print("Get columns 2 and 3, all equivalent:")
df[c(2, 3)]
df[, c(2, 3)]
df |> subset(select=c(2, 3))


## Get all columns except 2 and 3
print("All columns except 2 and 3, all equivalent:")
df[-c(2, 3)]
# df[, -c(2, 3)] => give a vector
df |> subset(select = -c(2, 3))

## Get by name
df$x
df["x"]
df |> subset(select="x")
df |> subset(select=x)


# Filters
df[df$x == 1, ]
df |> subset(subset=x == 1)
df |> subset(x == 1)

df |> subset(x == 2 & weight < mean(weight))


df[df == 1, ]
df |> subset(subset=x == 1)
df |> subset(x == 1)
df |> subset(x == 2 & weight < mean(weight))
