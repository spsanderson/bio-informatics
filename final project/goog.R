require(quantmod)
require(ggplot2)
require(knitr)
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
mean(dlyrtgoog)
sd(dlyrtgoog)
var(dlyrtgoog)
dlyrtmsft <- dailyReturn(msft)
mean(dlyrtmsft)
sd(dlyrtmsft)
var(dlyrtmsft)

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

cor(goog, msft)

t.test(goog$GOOG.Adjusted)
t.test(msft$MSFT.Adjusted)

p1 <- hist(dlyrtgoog)
p2 <- hist(dlyrtmsft)
plot( p1, col=rgb(0,0,1,1/4), xlim=c(-.2,.3))
plot( p2, col=rgb(1,0,0,1/4), xlim=c(-.2,.3), add=T)

## calculate the density - don't plot yet
densgoog <- density(dlyrtgoog)
densmsft <- density(dlyrtmsft)
## calculate the range of the graph
xlim <- range(densgoog$x,densmsft$x)
ylim <- range(0, densgoog$y, densmsft$y)
#pick the colours
googCol <- rgb(1,0,0,0.2)
msftCol <- rgb(0,0,1,0.2)
## plot the carrots and set up most of the plot parameters
plot(densgoog, xlim = xlim, ylim = ylim, xlab = 'Daily Returns',
     main = 'Distribution of GOOG and MSFT Daily Returns', 
     panel.first = grid())
#put our density plots in
polygon(densgoog, density = -1, col = googCol)
polygon(densmsft, density = -1, col = msftCol)
## add a legend in the corner
legend('topleft',c('GOOG','MSFT'),
       fill = c(googCol, msftCol), bty = 'n',
       border = NA)

logrtgoog
logrtmsft

p1 <- hist(logrtgoog)
p2 <- hist(logrtmsft)
plot( p1, col=rgb(0,0,1,1/4), xlim=c(-12,3), xlab = "Log Returns"
      , main = "Histogram of Log Returns for Google and Microsoft")
plot( p2, col=rgb(1,0,0,1/4), xlim=c(-12,3), add=T)