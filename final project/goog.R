require(quantmod)
require(lattice)
getSymbols("GOOG")
getSymbols("MSFT")

goog <- GOOG[from = '2013-01-01', to = '2013-11-22']
msft <- MSFT[from = '2013-01-01', to = '2013-11-22']

head(goog)
head(msft)

summary(goog)
summary(msft)

meangadj <- mean(goog$GOOG.Adjusted)
sdgadj <- sd(goog$GOOG.Adjusted)
vargadj <- var(goog$GOOG.Adjusted)
meangadj
sdgadj
vargadj

meanmadj <- mean(msft$MSFT.Adjusted)
sdmadj <- sd(msft$MSFT.Adjusted)
varmadj <- var(msft$MSFT.Adjusted)
meanmadj
sdmadj
varmadj

plot(goog$GOOG.Adjusted)
plot(msft$MSFT.Adjusted)
chartSeries(goog)
chartSeries(msft)

dlyrtgoog <- dailyReturn(goog)
dlyrtmsft <- dailyReturn(msft)

plot(dlyrtgoog)
plot(dlyrtmsft)

logrtgoog <- log(dlyrtgoog)
logrtmsft <- log(dlyrtmsft)

plot(logrtgoog)
plot(logrtmsft)

hist(dlyrtgoog)
hist(dlyrtmsft)

hist(logrtgoog)
hist(logrtmsft)

