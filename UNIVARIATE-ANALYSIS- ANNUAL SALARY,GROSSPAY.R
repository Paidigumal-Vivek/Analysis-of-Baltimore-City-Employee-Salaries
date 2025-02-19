# Install and load necessary packages if not already installed
# install.packages(c("ggplot2", "dplyr", "tidyr"))

# Load libraries
library(ggplot2)
library(dplyr)
library(tidyr)

# Read your dataset into R
data <- read.csv('Baltimore_City_Employee_Salaries.csv')

# Check the structure of your dataset
str(data)

# Univariate analysis for numeric variables (e.g., annualSalary, grossPay)
numeric_vars <- c("annualSalary", "grossPay")

# Summary statistics
summary_stats <- data %>%
  select(all_of(numeric_vars)) %>%
  summary()

print("Summary Statistics for Numeric Variables:")
print(summary_stats)

# Histograms for numeric variables
hist_plots <- data %>%
  gather(key = "variable", value = "value", all_of(numeric_vars)) %>%
  ggplot(aes(x = value, fill = variable)) +
  geom_histogram(bins = 30, position = "identity", alpha = 0.7) +
  facet_wrap(~ variable, scales = "free") +
  labs(title = "Histograms for Numeric Variables",
       x = "Value",
       y = "Frequency") +
  theme_minimal()

print(hist_plots)

