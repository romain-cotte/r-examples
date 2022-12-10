
data = scan(file="chicken_pox.dat", skip=1)

plot(data)


start <- c(1931, 1)
end <- c(1972, 12)
frequency <- 1

serie <- ts(data, start, end, 12)
plot.ts(serie)

serie <- ts(data, frequency)

plot.ts(serie)
