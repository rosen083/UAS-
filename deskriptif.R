data <- read.csv("data/mtcars.csv")
# Statistik pemusatan
mean_mpg <- mean(data$mpg)
median_mpg <- median(data$mpg)

# Modus
modus <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}
modus_mpg <- modus(data$mpg)

# Statistik sebaran
sd_mpg <- sd(data$mpg)
range_mpg <- range(data$mpg)
quartile_mpg <- quantile(data$mpg)

# Visualisasi
png("results/histogram.png")
hist(data$mpg, main="Histogram MPG", xlab="MPG")
dev.off()

png("results/boxplot.png")
boxplot(data$mpg, main="Boxplot MPG")
dev.off()

mean_mpg; median_mpg; modus_mpg
sd_mpg; range_mpg; quartile_mpg