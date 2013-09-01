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

# 12
birth_rate <- read.csv("~/bio-informatics/Bio-stats HW 1/brate.csv")
meanbrt <- mean(birth_rate$birthrt)
meanbrt
medianbrt <- median(birth_rate$birthrt)
medianbrt

# 5% trimmed mean
mean(birth_rate$birthrt, trim=0.05)

# 13 
cigarette_data <- read.csv("~/bio-informatics/Bio-stats HW 1/cigarett.csv")
mean_nicotine <- mean(cigarette_data$nicotine)
mean_nicotine

median_nicotine <- median(cigarette_data$nicotine)
median_nicotine

# histogram of nicotine levels
hist_nicotine <- hist(cigarette_data$nicotine)

# 14 use the file ischemic that came with the text and look at var sbp
# systolic blood pressure
sbp <- read.csv("~/bio-informatics/Bio-stats HW 1/ischemic.csv")
mean(sbp$sbp)
sd(sbp$sbp)

# 15 lowbwt sex is binary 1 = male and 0 = female
lowbwt_data <- read.csv("~/bio-informatics/Bio-stats HW 1/lowbwt_data.csv")
