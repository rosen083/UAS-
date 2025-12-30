
data <- read.csv("data/mtcars.csv")

# Korelasi Pearson
cor.test(data$wt, data$mpg, method="pearson")

# Scatter plot
plot(data$wt, data$mpg,
     main="Scatter Plot WT vs MPG",
     xlab="Berat Mobil (WT)",
     ylab="MPG")