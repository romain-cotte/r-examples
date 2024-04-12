# Type "integer"
x <- 10L
y <- 55L

# Print values of x and y
x
y

# Print the class name of x and y
class(x)
typeof(x)

# Type "complex"
x <- 3+5i
class(x)

# Type "character"
str <- "Lorem ipsum dolor sit amet,
consectetur adipiscing elit,
sed do eiusmod tempor incididunt
ut labore et dolore magna aliqua."

class(str)
str
cat(str)

nchar(str)

str <- "Hello World!"

# Look for a substring
grepl("H", str)
grepl("Hello", str)
grepl("X", str)

str1 <- "Hello"
str2 <- "World"

paste(str1, str2)

str1
str2

# Assignments

my_var <- 1
my_var
my_var <<- 2
my_var
3 -> my_var
my_var
4 ->> my_var
my_var

my_function <- function() {
  print("Hello World!")
}

my_function <- function(fname, lname) {
  return (paste("a", "b"))
}

a <- my_function("Peter", "Griffin")
a
