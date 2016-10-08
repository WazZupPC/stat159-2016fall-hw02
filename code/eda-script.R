
Advertising <- read.csv("data/Advertising.csv", header = TRUE)

sink("data/eda-output.txt")
print("Summary Statistics of TV")
summary(Advertising$TV)
sink()

png('images/histogram-tv.png')
hist(Advertising$TV)
dev.off()
pdf('images/histogram-tv.pdf')
hist(Advertising$TV)
dev.off()

sink("data/eda-output.txt", append=TRUE)
print("Summary Statistics of Sales")
summary(Advertising$Sales)
sink()

png('images/histogram-sales.png')
hist(Advertising$Sales)
dev.off()
pdf('images/histogram-sales.pdf')
hist(Advertising$Sales)
dev.off()


