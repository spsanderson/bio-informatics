# This script assumes you have the necessary data file loaded into the current directory.

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
plot(nursehome$resident, ylab="Resident Levels",
     main="Point Plot of Nursing Home Resident data")

hist(nursehome$resident, xlab="Resident Levels",
     main="Histogram of Nursing Home Resident data")

boxplot(nursehome$resident, main="Boxplot of Nursing Home Resident data")

# Cut nursehome data into intervals, 10 wide per interval then plot histogram
nursehome_interval <- cut(nursehome$resident, 10)
plot(nursehome_interval, xlab="Intervals", ylab="Count in Interval", 
     main="Nursing Home Resident Data in 10 Intervals")

# Get a table of the relative frequencies
nursehome_rf <- table(nursehome_interval)
nursehome_rf
max(nursehome$resident)

# 19 use data set called cigarett, work with vars tar and nicotine
cigarette <- read.csv("~/bio-informatics/Bio-stats HW 1/cigarett.csv")
summary(cigarette)
plot(cigarette$tar, ylab="Tar Levels", main="Tar Levels in Cigarettes data")

plot(cigarette$nicotine, ylab="Nicotine Levels", main="Nicotine Levels in Cigarettes data")

hist(cigarette$tar, xlab="Tar Levels", main="Histogram of Tar Levels in Cigarettes")

hist(cigarette$nicotine, xlab="Nicotine Levels", 
     main="Histogram of Nicotine Levels in Cigarettes")

boxplot(cigarette$tar, main="Boxplot of Tar Levels in Cigarettes")

boxplot(cigarette$nicotine, main="Boxplot of Nicotine Levels in Cigarettes")

# Cut cigarette data into intervals, 10 wide per interval then plot histogram
tar_interval <- cut(cigarette$tar, 10)
nicotine_interval <- cut(cigarette$nicotine, 10)
plot(tar_interval, xlab="Intervals", ylab="Count In Interval", 
     main="Histogram of Tar Interval Data")

plot(nicotine_interval, xlab="Intervals", ylab="Count In Interval", 
     main="Histogram of Nicotine Interval Data")
plot(cigarette$tar ~ cigarette$nicotine, xlab="Nicotine Level", ylab="Tar Level", 
     main="Two-Way Scatter Plot of Tar ~ Nicotine Data")

# 20 User brate file with variables year and birthrt
brate <- read.csv("~/bio-informatics/Bio-stats HW 1/brate.csv")
summary(brate)

# Plot of birth rate data for unmarried women between ages of 15 and 44
plot(brate, xlab="Year", ylab="Birth Rate/1000", main="Birth Rate by Year for Unmarried
 Women between 15 and 44 Years Old")

