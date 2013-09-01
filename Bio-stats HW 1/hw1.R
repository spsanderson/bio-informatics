# This script assumes you have the necessary data file loaded into the current directory
# and that you have it loaded into your workspace, this file was created using RStudio
# Problem 1
serzinc <- as.numeric(do.call("rbind", sapply("serzinc.csv", read.csv)))
summary(serzinc)
plot(serzinc, main="Point Plot of serzinc data")
hist(serzinc, main="Histogram of serzinc data")

# Cut serzinc data into intervals, 10 points per interval and then plot the histogram
serzinc_interval <- cut(serzinc, 10)
plot(serzinc_interval, xlab='Intervals', ylab="Count in Interval", 
     main="Serzinc Data in 10 Intervals")

# Get a table of the relative frequencies
sz_rel_freq <- table(serzinc_interval)
sz_rel_freq

# 17 lowbwt
# sex 1=male, tox 1=toxemia, grmhem 1=hemorrhage
lowbwt <- as.numeric(do.call("rbind", sapply("lowbwt.csv", read.csv)))
summary(lowbwt)
plot(lowbwt, main="Point Plot of lowbwt data")
hist(lowbwt, main="Histogram of lowbwt data")
boxplot(lowbwt, main="Boxplot of lowbwt data")

# Cut lowbwt data into intervals, 10 wide per interval then plot histogram
lowbwt_interval <- cut(lowbwt, 10)
plot(lowbwt_interval, xlab="Intervals", ylab='Count in Interval',
     main="Lowbwt Data in 10 Intervals")

# Get a table of the relative frequencies
lowbwt_rl_freq <- table(lowbwt_interval)
lowbwt_rl_freq

# 18 nursehome, state and residents
nursehome <- as.numeric(do.call("rbind", sapply("nurshome.csv", read.csv)))
summary(nursehome)
plot(nursehome, main="Point Plot of nursehome data")
hist(nursehome, main="Histogram of nursehome data")
boxplot(nursehome, main="Boxplot of nursehome data")

# Cut nursehome data into intervals, 10 wide per interval then plot histogram
nursehome_interval <- cut(nursehome, 10)
plot(nursehome_interval, xlab="Intervals", ylab="Count in Interval",
     main="Nursehome Data in 10 Intervals")

# Get a table of the relative frequencies
nursehome_rl_freq <- table(nursehome_interval)
nursehome_rl_freq