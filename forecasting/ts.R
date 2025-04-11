# See https://otexts.com/fpp2/ts-objects.html
library(ggbio)

y <- ts(c(123,39,78,52,110), start=2012)
print(y)

z = c(2, 4, 5, 6, 8, 9, 11, 13)
y <- ts(z, start=2003, frequency=12)

print(y)



set.seed(30)
y <- ts(rnorm(50))
autoplot(y) + ggtitle("White noise")
