library(car)
?Salaries

# Basic summary statistics
summary(Salaries)

# Structure to verify data types
str(Salaries)

# Calculate mean salary by gender
aggregate(salary ~ sex, data = Salaries, FUN = mean)

# Boxplot of salary by gender
boxplot(salary ~ sex, data = Salaries, main = "Salary by Gender", ylab = "Salary")

# T-test for salary difference between genders
t.test(salary ~ sex, data = Salaries)

# Average salary by rank
aggregate(salary ~ rank, data = Salaries, FUN = mean)

# Boxplot of salary by rank
boxplot(salary ~ rank, data = Salaries, main = "Salary by Rank", ylab = "Salary")

# ANOVA test for salary differences by rank
anova_result <- aov(salary ~ rank, data = Salaries)
summary(anova_result)

# Scatter plot and correlation
plot(Salaries$yrs.service, Salaries$salary, main = "Salary vs. Years of Service", xlab = "Years of Service", ylab = "Salary")
cor(Salaries$yrs.service, Salaries$salary)

