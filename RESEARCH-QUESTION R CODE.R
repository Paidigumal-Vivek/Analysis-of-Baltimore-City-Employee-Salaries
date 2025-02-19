#What is the distribution of annual salaries among Baltimore City employees?
# Load necessary libraries
library(ggplot2)
library(dplyr)

# Load the dataset
data <- read.csv("Baltimore_City_Employee_Salaries.csv")

# Plot the distribution of annual salaries
ggplot(data, aes(x = annualSalary)) +
  geom_histogram(binwidth = 10000, fill = "blue", color = "black", alpha = 0.7) +
  labs(title = "Distribution of Annual Salaries",
       x = "Annual Salary",
       y = "Frequency")


# How does the gross pay vary across different agencies?
# Subset the data for relevant columns
agency_data <- data.frame(agencyName = data$agencyName, grossPay = data$grossPay)

# Create a bar chart to show the average gross pay by agency
ggplot(agency_data, aes(x = reorder(agencyName, -grossPay), y = grossPay)) +
  geom_bar(stat = "summary", fun = "mean", fill = "green", color = "darkgreen") +
  labs(title = "Average Gross Pay by Agency",
       x = "Agency",
       y = "Average Gross Pay")


#3 In which year did Baltimore City employees experience the highest number of hirings?


# Convert hire date to a Date object
data$hireDate <- as.Date(data$hireDate, format = "%d-%m-%Y")

# Extract the year from the hire date
data$hireYear <- format(data$hireDate, "%Y")

# Count the number of hirings per year
hiring_counts <- table(data$hireYear)

# Convert to data frame for plotting
hiring_data <- data.frame(Year = as.numeric(names(hiring_counts)), Hires = as.numeric(hiring_counts))

# Create a bar chart to show the number of hirings per year
ggplot(hiring_data, aes(x = Year, y = Hires)) +
  geom_bar(stat = "identity", fill = "skyblue", color = "blue") +
  labs(title = "Number of Hirings by Year",
       x = "Year",
       y = "Number of Hirings")

#1

# Find the bin with the maximum frequency
max_bin <- which.max(table(cut(data$annualSalary, breaks = seq(min(data$annualSalary), max(data$annualSalary) + 10000, by = 10000))))

# Get the range of the bin
bin_range <- as.numeric(levels(max_bin))

# Print the result
cat("X-Axis (Annual Salary):", bin_range, "\n")
cat("Y-Axis (Frequency):", table(cut(data$annualSalary, breaks = seq(min(data$annualSalary), max(data$annualSalary) + 10000, by = 10000)))[max_bin], "\n")


#2

# Find the agency with the maximum average gross pay
max_agency <- agency_data$agencyName[which.max(agency_data$grossPay)]

# Get the maximum average gross pay
max_gross_pay <- max(agency_data$grossPay)

# Print the result
cat("X-Axis (Agency):", max_agency, "\n")
cat("Y-Axis (Average Gross Pay):", max_gross_pay, "\n")


#3

# Find the year with the maximum number of hirings
max_year <- hiring_data$Year[which.max(hiring_data$Hires)]

# Get the maximum number of hirings
max_hirings <- max(hiring_data$Hires)

# Print the result
cat("X-Axis (Year):", max_year, "\n")
cat("Y-Axis (Number of Hirings):", max_hirings, "\n")



