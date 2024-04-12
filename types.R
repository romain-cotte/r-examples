

x <- 10L
y <- 55L

# Print values of x and y
x
y

# Print the class name of x and y
class(x)


x <- 3+5i
class(x)



str <- "Lorem ipsum dolor sit amet,
consectetur adipiscing elit,
sed do eiusmod tempor incididunt
ut labore et dolore magna aliqua."

str
cat(str)


nchar(str)


str <- "Hello World!"

grepl("H", str)
grepl("Hello", str)
grepl("X", str)

str1 <- "Hello"
str2 <- "World"

paste(str1, str2)

str1
str2



str <- "We are the so-called \"Vikings\", from the north."

cat(str)
str



my_var <- 1
my_var
my_var <<- 2
my_var
3 -> my_var
my_var
4 ->> my_var
my_var

5 %in% 1:10

adj <- list("red", "big", "tasty")

fruits <- list("apple", "banana", "cherry")
for (x in adj) {
  for (y in fruits) {
    print(paste(x, y))
  }
}

my_function <- function() {
  print("Hello World!")
}

my_function <- function(fname, lname) {
  return (paste("a", "b"))
  #
  # paste(fname, lname)
}

a <- my_function("Peter", "Griffin")
a
