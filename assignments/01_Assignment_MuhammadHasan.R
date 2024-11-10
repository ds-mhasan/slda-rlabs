# Set lambda, the average rate of arrivals
lambda <- 5

# Probability of exactly 3 customers arriving in a 10-minute interval
prob_3_customers <- dpois(3, lambda)
cat("Probability of exactly 3 customers arriving:", prob_3_customers, "\n")

# Probability of more than 5 customers arriving in a 10-minute interval
prob_more_than_5 <- 1 - ppois(5, lambda)
cat("Probability of more than 5 customers arriving:", prob_more_than_5, "\n")

# Simulate customer arrivals over 1000 intervals of 10 minutes each
set.seed(42)  # Set seed for reproducibility
simulated_arrivals <- rpois(1000, lambda)

# Summary statistics of simulated arrivals
mean_arrivals <- mean(simulated_arrivals)
var_arrivals <- var(simulated_arrivals)
cat("Mean of simulated arrivals:", mean_arrivals, "\n")
cat("Variance of simulated arrivals:", var_arrivals, "\n")

# Plot histogram of simulated arrivals
hist(simulated_arrivals, breaks = max(simulated_arrivals) - min(simulated_arrivals),
     main = "Histogram of Customer Arrivals in 10-Minute Intervals",
     xlab = "Number of Customers", ylab = "Frequency", col = "lightblue")
