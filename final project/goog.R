require(quantmod)
getSymbols("GOOG")
goog <- GOOG[from = '2013-01-01', to = '2013-11-22']
head(goog)
plot(goog$GOOG.Adjusted)
chartSeries(goog)

dlyrt <- 