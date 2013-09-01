# This script assumes you have the necessary data file loaded into the current directory
# and that you have it loaded into your workspace, this file was created using RSTudio
serzinc <- as.numeric(do.call("rbind", sapply("serzinc.csv", read.csv)))
summary(serzinc)
