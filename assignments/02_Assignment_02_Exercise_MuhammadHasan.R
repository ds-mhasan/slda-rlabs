# Load necessary libraries
library(car)

# View the structure of the data
str(TitanicSurvival)

# 1) Describe the data - Display summary statistics
summary(TitanicSurvival)

# 2) Test for independence between 'survived' and 'passengerClass'
# Create a contingency table for 'survived' and 'passengerClass'
survival_class_table <- table(TitanicSurvival$survived, TitanicSurvival$passengerClass)

# Perform a Chi-square test of independence
chi_square_test <- chisq.test(survival_class_table)

# Display the results of the Chi-square test
print(chi_square_test)

# 3) Direction of the association
# Calculate proportions of survival within each passenger class
prop_table <- prop.table(survival_class_table, margin = 2)
print(prop_table)

# Interpretation
# If the chi-square test is significant (p < 0.05), we can conclude that survival is associated with passenger class.
# To see the direction, look at the proportions table. Higher proportions in "yes" for higher classes (1st) would
# indicate a positive association between class and survival rate.
