# This script assumes you have the necessary data file loaded into the current directory
# and that you have it loaded into your workspace, this file was created using RStudio
# Problem 1
serzinc <- read.csv("~/bio-informatics/Bio-stats HW 1/serzinc.csv")
summary(serzinc)
plot(serzinc$zinc, ylab="Zinc Levels", main="Point Plot of Zinc Levels")
hist(serzinc$zinc, xlab="Zinc Levels", main="Histogram of Zinc Levels")

# Cut serzinc data into intervals, 10 points per interval and then plot the histogram
serzinc_interval <- cut(serzinc$zinc, 10)
plot(serzinc_interval, xlab='Intervals', ylab="Count in Interval", 
     main="Zinc Level Data in 10 Intervals")

# Get a table of the relative frequencies
sz_rf <- table(serzinc_interval)
sz_rf

# 17 lowbwt
# sex 1=male, tox 1=toxemia, grmhem 1=hemorrhage
lowbwt <- read.csv("~/bio-informatics/Bio-stats HW 1/lowbwt.csv")
summary(lowbwt)
plot(lowbwt$lowbwt, ylab="Birth Weight", main="Point Plot of Low Birth Weight Data")
hist(lowbwt$lowbwt, xlab="Birth Weight", main="Histogram of Low Birth Weight Data")
boxplot(lowbwt$lowbwt, main="Boxplot of Low Birth Weight data")

# Cut lowbwt data into intervals, 10 wide per interval then plot histogram
lowbwt_interval <- cut(lowbwt$lowbwt, 10)
plot(lowbwt_interval, xlab="Intervals", ylab='Count in Interval',
     main="Low Birth Weight Data in 10 Intervals")

# Get a table of the relative frequencies
lowbwt_rf <- table(lowbwt_interval)
lowbwt_rf

# 18 nursehome, state and residents
nursehome <- read.csv("~/bio-informatics/Bio-stats HW 1/nurshome.csv")
summary(nursehome)
plot(nursehome$resident, ylab="Resident Levels", main="Point Plot of Nursing Home Resident data")
hist(nursehome$resident, xlab="Resident Levels", main="Histogram of Nursing Home Resident data")
boxplot(nursehome$resident, main="Boxplot of Nursing Home Resident data")

# Cut nursehome data into intervals, 10 wide per interval then plot histogram
nursehome_interval <- cut(nursehome$resident, 10)
plot(nursehome_interval, xlab="Intervals", ylab="Count in Interval",
     main="Nursing Home Resident Data in 10 Intervals")

# Get a table of the relative frequencies
nursehome_rf <- table(nursehome_interval)
nursehome_rf

