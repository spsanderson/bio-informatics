# Getting data together
before <- c(195,145,205,159,244,166,250,236,192,224,238,197,169,158,151,197,180,222,168,168,167,161,178,137)
after <- c(146,155,178,146,208,147,202,215,184,208,206,169,182,127,149,178,161,187,176,145,154,153,137,125)
diff <- before-after

# what to do with data
mean(before)
median(before)
var(before)
sd(before)
cvb <- (sd(before)/mean(before))*100
cvb
mean(after)
median(after)
var(after)
sd(after)
cva <- (sd(after)/mean(after))*100
cva

# Range and IQR of after values
range <- max(after)-min(after)
range

IQR(after)

# Stem and leaf and box-plot of diff
stem(diff, width = 100)
boxplot(diff, ylab="Difference", main="Box-plot of Difference Values")