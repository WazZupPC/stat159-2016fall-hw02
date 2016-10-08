
Advertising <- read.csv("data/Advertising.csv", header = TRUE)


lm_ad <- lm(Sales ~ TV, data = advertising)
save(lm_ad, file = "data/regression.RData")
summary(lm_ad)


png('images/scatterplot-tv-sales.png')
plot(Advertising$TV, Advertising$Sales, main = "Scatterplot with fitted regression line", xlab = "TV", ylab = "Sales") +
	abline(lm_ad)
dev.off()
pdf('images/scatterplot-tv-sales.pdf')
plot(Advertising$TV, Advertising$Sales, main = "Scatterplot with fitted regression line", xlab = "TV", ylab = "Sales") +
	abline(lm_ad)
dev.off()