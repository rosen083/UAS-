
data <- read.csv("data/mtcars.csv")

# Model regresi
model <- lm(mpg ~ wt, data=data)
summary(model)

# Visualisasi regresi
png("results/regresi.png")
plot(data$wt, data$mpg,
     main="Regresi Linear MPG vs WT",
     xlab="WT",
     ylab="MPG")
abline(model, col="blue")
dev.off()