# Install and load necessary packages if not already installed
# install.packages(c("ggplot2", "dplyr", "tidyr"))

# Load libraries
library(ggplot2)
library(dplyr)
library(tidyr)

# Read your dataset into R
data <- read.csv('Baltimore_City_Employee_Salaries.csv')

# Univariate analysis for categorical variables (e.g., jobClass, agencyName)
categorical_vars <- c("jobClass", "agencyName")

# Create a new column with single letters for x-axis labels
data$shortLabel <- substr(data$jobClass, 1, 1)

# Bar plot with single letter x-axis labels
bar_plots_single_letter <- data %>%
  gather(key = "variable", value = "value", all_of(categorical_vars)) %>%
  ggplot(aes(x = shortLabel, fill = variable)) +
  geom_bar(position = "dodge", show.legend = TRUE) +
  labs(title = "Bar Plots for Categorical Variables",
       x = "Value",
       y = "Count") +
  theme_minimal()

print(bar_plots_single_letter)
