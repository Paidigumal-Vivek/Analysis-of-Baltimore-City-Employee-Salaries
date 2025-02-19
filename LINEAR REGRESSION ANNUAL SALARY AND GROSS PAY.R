library(ggplot2)
# Read your dataset into R
data <- read.csv('Baltimore_City_Employee_Salaries.csv')

# Check the structure of your dataset
str(data)

# Fit a linear regression model
linear_model <- lm(grossPay ~ annualSalary, data = data)

# Display a summary of the regression model
summary(linear_model)

# Set options to display numeric values without scientific notation
options(scipen = 999)

# Plot the data points
plot(data$annualSalary, data$grossPay, main = "Linear Regression", xlab = "Annual Salary", ylab = "Gross Pay")

# Add the regression line to the plot
abline(linear_model, col = "red")
