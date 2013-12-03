beds <- read.csv("bed.csv")
bed80 <- beds$Bed_80
bed80
bed86 <- beds$Bed_86
bed86
t.test(bed80,bed86,alternative="two.sided")
t.test(bed80,bed86,alternative="two.sided",paired=T)