
data <- read.csv("data/mtcars.csv")

# Uji Shapiro-Wilk
shapiro.test(data$mpg)

# Q-Q Plot
png("results/qqplot.png")
qqnorm(data$mpg)
qqline(data$mpg)
dev.off()