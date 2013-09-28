# Cotinine Level (ng/ml)
cl <- c(5,7,9,11,13,14,15,17,19)

# Sensitivity
sensitivity <- c(0.971, 0.964, 0.960, 0.954, 0.950, 0.949, 0.945, 0.939, 0.932)

# Specificity
specificity <- c(0.898, 0.931, 0.946, 0.951, 0.954, 0.956, 0.960, 0.963, 0.965)
omspec <- 1-specificity
omspec

# Plot the points
rocplot = plot(omspec,sensitivity, xlab = '1-Specificity',
               ylab = 'Sensitivity', main = 'ROC Curve')
abline(h = 0.9625, v = 0.0575)
abline(h = 0.9525, v = 0.0475)
text(0.038,0.95,"0.9525")
text(0.038,0.96,"0.9625")
text(0.0525,0.94,"0.0475")
text(0.0625,0.94,"0.0575")