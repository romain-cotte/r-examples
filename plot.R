
# p <- rnorm(100, mean=0, sd=0.2)
# q <- rcauchy(100, location = 1, scale = 10)

# plot(p)

white_noise <- rnorm(n=200, mean=0, sd=1)

plot(white_noise, type="l", col="blue")
