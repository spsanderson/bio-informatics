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
rng = range(serum_zinc$zinc)
IQR = IQR(serum_zinc$zinc)
IQR
rng
# Chebychev description of data
# 2 sd's
ci2 <- range((mean(serum_zinc$zinc)+2*sd(serum_zinc$zinc)),
      ((mean(serum_zinc$zinc)-2*sd(serum_zinc$zinc))))
ci2

# 3 sd's
ci3 <- range((mean(serum_zinc$zinc)+3*sd(serum_zinc$zinc)),
             ((mean(serum_zinc$zinc)-3*sd(serum_zinc$zinc))))
ci3

# IQRm ci2 and ci3 together
IQR
rng
ci2
ci3