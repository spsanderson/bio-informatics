# This script assumes you have the necessary data file loaded into the current directory
# and that you have it loaded into your workspace, this file was created using RSTudio
serzinc <- as.numeric(do.call("rbind", sapply("serzinc.csv", read.csv)))
summary(serzinc)
plot(serzinc, main="Point Plot of serzinc data")
hist(serzinc, main="Histogram of serzinc data")

# Cut serzinc data into intervals, 10 points per interval and then plot the histogram
serzinc_interval <- cut(serzinc, 10)
plot(serzinc_interval, xlab='Intervals', ylab="Count in Interval", 
     main="Serzinc Data in 10 Intervals")