
df <- read.table("./data/snake_weights.data")
weights <- df[, 1]

hist(
  weights,
  main="Histogramme des poids",
  xlab="Poids en grammes",
  ylab="Fréquence"
)
hist(
  weights,
  main="Histogramme des poids",
  xlab="Poids en grammes",
  ylab="Fréquence",
  nclass=5
)
hist(
  weights,
  main="Histogramme des poids",
  xlab="Poids en grammes",
  ylab="Fréquence",
  breaks=c(32,33.5,35,36.5,38)
)
hist(weights, main="",xlab="",ylab="", col="red")


hist(
  c(rep(15,25), rep(25,45), rep(35,35), rep(50,30), rep(80,20)),
  breaks=c(10,20,30,40,60,100),
  main="",
  xlab="Diamètre",
  ylab="Densité",
  col="light blue"
)


v <- c(22.3, 17.9, 20.4, 24.6, 19.5, 26.2, 18.7)
quantile(v, 0.30)

boxplot(
  weights,
  xlab="Le diagramme en boîte pour l'exemple des serpents",
  ylab="Poids en grammes",
  col="light blue"
)

fruits <- c(
  rep("Banane", 69),
  rep("Nectarine", 35),
  rep("Orange", 14),
  rep("Pêche", 39),
  rep("Poire", 41),
  rep("Pomme", 77)
)

pie(table(fruits))
barplot(table(fruits), space=0.5, col="light blue")

v <- read.table("./data/table.data")[,1]

print(v)
print(mean(v))
print(sd(v))
print(sd(v)/mean(v))

hist(v)
quantile(v)
