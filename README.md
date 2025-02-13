# Baltimore-City-Employee-Salaries


## Overview
This project analyzes the **Baltimore City Employee Salaries** dataset to explore salary distributions, variations in gross pay across agencies, and hiring trends over the years. The study utilizes **Python, SQL, R, and Tableau** for data cleaning, analysis, and visualization.

## Research Questions
1. **What is the distribution of annual salaries among Baltimore City employees?**
2. **How does the gross pay vary across different agencies?**
3. **Which year had the highest number of hirings in Baltimore City?**

## Tech Stack
- **Python** (Data Cleaning)
- **SQL** (Summary Statistics)
- **R** (Data Analysis & Visualization)
- **Tableau** (Multivariate Analysis & Interactive Dashboards)


## Dataset
The dataset **"Baltimore_City_Employee_Salaries"** contains:
- Employee names, job classes, and agency details
- Annual salaries and gross pay
- Hiring dates and fiscal years

**DataSource**: 

## Key Analyses
### **Univariate Analysis**
- **Categorical Variables** (Job Classes, Agencies) 
- **Numeric Variables** (Annual Salary, Gross Pay) 

### **Bivariate Analysis**
- **Salary vs. Gross Pay** (Linear Regression) 
- **Average Gross Pay by Agency** 

### **Multivariate Analysis**
- **Hiring Trends Over Time** 
- **Salary Distribution by Fiscal Year** 

# Results and Challenges

## Results
This study analyzed the **Baltimore City Employee Salaries** dataset to uncover trends in salary distribution, agency pay variations, and hiring patterns. Below are the key findings:

### Salary Distribution
- The majority of employees have an annual salary within a specific range, with some outliers earning significantly higher.
- The **histogram of annual salaries** reveals a skewed distribution, indicating a larger number of employees earning lower salaries compared to high-income earners.

### Gross Pay by Agency
- There is **considerable variation in gross pay** across different agencies.
- Certain agencies have a **higher average gross pay**, likely due to job roles, seniority, or overtime compensation.
- **Top-paying agencies** were identified using bar plots and summary statistics.

### Hiring Trends
- The **year with the highest number of hirings** was identified through time-series analysis.
- Significant **fluctuations in hiring trends** were observed, with notable spikes in specific years.
- Potential reasons for hiring trends include **budget allocations, policy changes, or workforce demands**.

### Salary vs. Gross Pay (Linear Regression)
- A **strong correlation between annual salary and gross pay** was observed.
- However, **some deviations exist**, possibly due to **bonuses, overtime, or additional compensations**.



## Challenges
While conducting this analysis, several challenges were encountered:

### **Data Cleaning**
- **Missing values** in key fields such as hire dates and salary data required preprocessing.
- **Inconsistent date formats** had to be standardized before extracting hiring year information.

### **Handling Large Data**
- The dataset contained a large number of entries, requiring **efficient SQL queries** for summary statistics.
- **Performance issues** were encountered when processing large-scale visualizations in R and Tableau.

### **Data Interpretation Challenges**
- Some employees had **higher gross pay than their annual salaries**, likely due to **bonuses, overtime, or allowances**.
- Interpreting hiring trends required **contextual insights**, such as policy changes affecting recruitment.

### **Visualization Constraints**
- **Tableau’s multivariate analysis required significant optimization** for clear and insightful visualizations.
- **Limited granularity in agency-level data** made it difficult to fully explain salary variations.

---

## Future Work
- **More granular analysis of job roles and tenure** to better understand salary discrepancies.
- **Predictive modeling** to forecast salary growth trends based on past data.
- **Exploring gender and educational influences** on salary variations, aligning with related research.


