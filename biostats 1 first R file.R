# First R file for Biostatistics 1

# This line produces a vector assigned to x of concatenated
# values denoted by c()
x = c(58,103,105,169,173,181,205,207,227,230,245,301,313)

# This gets the minimum of x
min(x)

# This gets the maximum of x
max(x)

# This gets the mean of x
mean(x)

# This gets the median of x
median(x)

# This gets the standard deviation of x
sd(x)

# Plot the CD$ T Cell values
plot(x, xlab="Index", ylab="Cell Counts", main="Plot of CD4 T Cell Counts")