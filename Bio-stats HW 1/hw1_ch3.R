# HW 1 Chapter 3, this script assumes that data files are in your working directory
# Import file as serum_zinc in order to work with file and not change anything with
# chapter 2 homework serzinc files
serum_zinc <- read.csv("~/bio-informatics/Bio-stats HW 1/serzinc.csv")

# Summary of the serum_zinc file
summary(serum_zinc)
# (a) find mean, median, mode, sd, range and IRQ
mean(serum_zinc$zinc)
median(serum_zinc$zinc)

# There is not a simple way to get the mode of a data set in R so we have to
# use a little work around in order to get it
mode <- table(as.vector(serum_zinc))
names(mode)[mode == max(mode)]
sd(serum_zinc$zinc)
range(serum_zinc$zinc)
IQR(serum_zinc$zinc)