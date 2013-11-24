# Load and require desired packages
require(quantmod)
require(ggplot2)
require(knitr)

# Get data for Google and Microsoft
getSymbols("GOOG")
getSymbols("MSFT")

# Place the OHLCV data for Google and Microsoft into objects
goog <- GOOG
msft <- MSFT

# Get minor view of what is in each object
head(goog)
head(msft)

# Get the summary data for each object
summary(goog)
summary(msft)

# Get the IQR of each security
IQR(goog)
IQR(msft)

# Get the mean, standard deviation and variance of Google and Microsoft
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

# Plot the adjusted close of Google and Microsoft
plot(goog$GOOG.Adjusted)
plot(msft$MSFT.Adjusted)
chartSeries(goog)
chartSeries(msft)

# Get the daily returns for Google and Microsoft
# get their corresponding means, standard deviations and variance
dlyrtgoog <- dailyReturn(goog)
mean(dlyrtgoog)
sd(dlyrtgoog)
var(dlyrtgoog)
dlyrtmsft <- dailyReturn(msft)
mean(dlyrtmsft)
sd(dlyrtmsft)
var(dlyrtmsft)

# Plot the daily returns of Google and Microsoft
plot(dlyrtgoog)
plot(dlyrtmsft)

# Get the log of the daily returns
logrtgoog <- log(dlyrtgoog)
logrtmsft <- log(dlyrtmsft)

# Plot the log of the daily returns
plot(logrtgoog)
plot(logrtmsft)

# Get a histogram of the daily returns of Google and Microsoft
hist(dlyrtgoog)
hist(dlyrtmsft)

# Get a histogram of the log of daily returns of Google and Microsoft
hist(logrtgoog)
hist(logrtmsft)

# Get a correlation matrix of Google v Microsoft
cor(goog, msft)

# Perform a simple t.test of the mean = 0 for Google and Microsoft Adjusted Close
t.test(goog$GOOG.Adjusted)
t.test(msft$MSFT.Adjusted)

# Plotting the histograms of daily returns of Google and Microsoft on the same graph
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

p1 <- hist(logrtgoog)
p2 <- hist(logrtmsft)
plot( p1, col=rgb(0,0,1,1/4), xlim=c(-12,3), xlab = "Log Returns"
      , main = "Histogram of Log Returns for Google and Microsoft")
plot( p2, col=rgb(1,0,0,1/4), xlim=c(-12,3), add=T)

# Read in .csv files
goog.csv <- read.csv("GOOG.csv")
msft.csv <- read.csv("MSFT.csv")
googadj <- goog.csv$Adj.Close
msftadj <- msft.csv$Adj.Close
gx <- 1:227
mx <- 1:227

googlm <- lm(googadj ~ gx)
msftlm <- lm(msftadj ~ mx)

plot(googadj, xlab = "Jan 2013 to Nov 2013", ylab = "Price", 
     main = "Google Adjusted Close Year 2013 with Trend Line", type="l")
abline(googlm)
plot(msftadj, xlab = "Jan 2013 to Nov 2013", ylab = "Price",
     main = "Microsoft Adjusted Close Year 2013 with Trend Line", type="l")
abline(msftlm)

densgadj <- density(googadj)
## calculate the range of the graph
xlim <- range(densgadj$x)
ylim <- range(0, densgadj$y)
#pick the colours
googCol <- rgb(1,0,0,0.2)
## plot the carrots and set up most of the plot parameters
plot(densgadj, xlim = xlim, ylim = ylim, xlab = 'Daily Returns',
     main = 'Distribution of GOOG and MSFT Daily Returns', 
     panel.first = grid())
#put our density plots in
polygon(densgadj, density = -1, col = googCol)
## add a legend in the corner
legend('topleft',c('GOOG'),
       fill = c(googCol), bty = 'n',
       border = NA)