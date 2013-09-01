# This script assumes you have the necessary data file loaded into the current directory
# and that you have it loaded into your workspace, this file was created using RStudio
# Problem 1
serzinc <- read.csv("~/bio-informatics/Bio-stats HW 1/serzinc.csv")
summary(serzinc)
plot(serzinc$zinc, ylab="Zinc Levels", main="Point Plot of serzinc data")
hist(serzinc$zinc, xlab="Zinc Levels", main="Histogram of serzinc data")

# Cut serzinc data into intervals, 10 points per interval and then plot the histogram
serzinc_interval <- cut(serzinc$zinc, 10)
plot(serzinc_interval, xlab='Intervals', ylab="Count in Interval", 
     main="Serzinc Data in 10 Intervals")

# Get a table of the relative frequencies
sz_rf <- table(serzinc_interval)
sz_rf

# 17 lowbwt
# sex 1=male, tox 1=toxemia, grmhem 1=hemorrhage
lowbwt <- read.csv("~/bio-informatics/Bio-stats HW 1/lowbwt.csv")
summary(lowbwt)
plot(lowbwt$lowbwt, main="Point Plot of Low Birth Weight")
hist(lowbwt$lowbwt, main="Histogram of Low Birth Weight Data")
boxplot(lowbwt$lowbwt, main="Boxplot of Low Birth Weight data")

# Cut lowbwt data into intervals, 10 wide per interval then plot histogram
lowbwt_interval <- cut(lowbwt$lowbwt, 10)
plot(lowbwt_interval, xlab="Intervals", ylab='Count in Interval',
     main="Lowbwt Data in 10 Intervals")

# Get a table of the relative frequencies
lowbwt_rf <- table(lowbwt_interval)
lowbwt_rf

# 18 nursehome, state and residents
nursehome <- read.csv("~/bio-informatics/Bio-stats HW 1/nurshome.csv")
summary(nursehome)
plot(nursehome$resident, main="Point Plot of nursehome data")
hist(nursehome$resident, main="Histogram of nursehome data")
boxplot(nursehome$resident, main="Boxplot of nursehome data")

# Cut nursehome data into intervals, 10 wide per interval then plot histogram
nursehome_interval <- cut(nursehome$resident, 10)
plot(nursehome_interval, xlab="Intervals", ylab="Count in Interval",
     main="Nursehome Data in 10 Intervals")

# Get a table of the relative frequencies
nursehome_rf <- table(nursehome_interval)
nursehome_rf

