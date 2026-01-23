
# BANKING ANALYTICS : TRENDS,RISKS, AND OPPORTUNITIES

## Project Overview

This project involves the analysis of a banking dataset to gain insights into customer behavior, financial activities, and the relationships between various features such as **income, savings, loans, and credit cards**. The dataset consists of customer attributes such as **age, nationality, occupation, income, risk weighting, and account types**, collected from a banking institution.

The analysis provides actionable insights into customer segmentation, financial trends, and risk analysis, showcasing skills in data wrangling, SQL queries, statistical analysis, and data visualization.

## Objective

The primary objectives of this project are:

* To explore and clean the banking dataset, identify trends and outliers.

* To segment customers into different categories based on their financial behavior.

* To identify correlations between variables like **income, credit card balance, bank loans, and risk weighting**.

* To analyze customer loyalty and lifetime value based on financial activity and account type.

* To visualize key metrics and insights, showcasing advanced data analysis and visualization skills

## Methodology

## Data Cleaning and Preprocessing

The dataset was initially loaded from a CSV file into an Oracle SQL database for efficient querying. 
The following preprocessing steps were undertaken:

* Removal of missing or erroneous values.

* Transformation of date fields into standard date formats for time-based analysis.

* Handling categorical variables like **gender, nationality, and loyalty classification** by encoding them into usable formats.

## SQL Queries and Analysis

All exploratory and analytical work in this project was primarily conducted using Oracle SQL. The queries were designed to replicate real-world banking analytics use cases, focusing on **customer behavior, financial health, product usage, and loyalty insights.**

The analysis can be broadly categorized into the following themes:

  ## 1. Customer Segmentation & Demographics
  **Business Questions Addressed**

  * Who are the bank’s customers?

  * How are customers distributed by age, income, occupation, nationality, and location?

  **Analyses Performed**

  * Customer distribution by age groups

  * Segmentation of customers into income tiers (Low / Middle / High)

  * Distribution of customers by location, nationality, and occupation


  **Outcome**

Enabled clear customer profiling to support marketing and strategic decision-making.

  ## 2. Income, Deposits & Wealth Analysis

  **Business Questions Addressed**

  * Do higher-income customers hold more deposits?
 
  * Which customers represent the highest deposit value?

  **Analyses Performed**

  * Average bank deposits and estimated income

  * Comparison of average deposits vs income

  * Ranking customers by total deposits

  * Deposit analysis by property ownership

  * Average superannuation savings by occupation

  **Outcome**

Identified high-value customers and wealth concentration patterns.

  ## 3. Loans, Debt & Financial Risk

  **Business Questions Addressed**

  * Which customers are highly leveraged?

  * Do older customers borrow or save more?

  **Analyses Performed**

  * Average bank loans

  * Debt-to-Income (DTI) ratio calculation

  * Identification of customers with high loan-to-income ratios

  * Loan-dominant vs deposit-dominant customers

  * Age-based borrowing and saving behavior analysis

  **Outcome**

  Provided insights into customer risk exposure and borrowing behavior.

  ## 4. Credit Card Usage Analysis

  **Business Questions Addressed**

  * How do customers use credit cards?

  * Does loyalty or occupation influence credit behavior?

  **Analyses Performed**

* Average credit card balance by:

  * Occupation

  * Loyalty classification

  * Number of credit cards

* Customers with:

  * Credit cards but no loans

  * Loans but no credit cards

 **Outcome**
 
Revealed spending patterns and opportunities for product cross-selling.

 ## 5. Customer Loyalty & Retention

 **Business Questions Addressed**

 * How effective is the loyalty program?

 * Which customers are at risk of churn?

**Analyses Performed**

* Customer distribution by loyalty classification

* Loyalty classification updates using business rules
(e.g., reclassifying Jade → Bronze)

* High-end customer loyalty satisfaction analysis

* Identification of potential churn customers using a rule-based model
(High fees + low deposits)

**Outcome**

Simulated real-world retention and customer lifecycle management logic.

## 6. Product Penetration & Account Ownership

**Business Questions Addressed**

* How widely are banking products adopted?

* Which products are underutilized?

**Analyses Performed**

* Product penetration analysis for:

  * Credit cards

  * Loans

  * Deposits

  * Savings accounts

  * Foreign currency accounts

* Percentage of customers holding specific products

* Total customers per product category

**Outcome**

Delivered insights for cross-sell and upsell strategy development.

## 7. Comparative & Behavioral Insights

* Business Questions Addressed

   * How do deposits compare to loans across customers?

   * Does income level influence savings behavior?
 
* Analyses Performed


  * Average deposits vs average loans

  * Income vs deposit correlation analysis

  * Behavioral comparisons by age and property ownership

**Outcome**

Translated raw transactional data into actionable behavioral insights.

# Visualization

Key findings were visualized using matplotlib and seaborn in Python. Visualizations included:

  * Histograms: To show distributions of numerical features like Income and Credit Card Balance.

  * Heatmaps: To display correlations between features.

  * Bar Charts: For comparing customer behavior across different categories like gender, nationality, and loyalty classification.

**Customer Overview**

![Customer overview Screenshot](https://github.com/Stanley100M/BANKING_ANALYTICS/blob/main/Images/Customer%20Overview.JPG)

**Product Perfomance**

![Product Perfomance Screenshot](https://github.com/Stanley100M/BANKING_ANALYTICS/blob/main/Images/Product%20Perfomance.JPG)



# Customer Lifetime Value (CLV) Analysis

We calculated the **Customer Lifetime Value (CLV)** based on transactional behaviors such as **Bank Deposits, Credit Card Balance, and Bank Loans**. This analysis helped to identify high-value customers and segments that could benefit from targeted marketing.

# Key Findings

**1.Income and Credit Card Usage**: There is a positive correlation between estimated income and credit card balance. High-income customers tend to have higher credit card balances, indicating more frequent use of credit cards for larger purchases.

**2.Risk Weighting**: Customers with higher risk weighting are more likely to have larger credit card balances and bank loans, which suggests that these individuals are financially more leveraged and may require closer monitoring for risk management.

**3.Loyalty Classification**: Customers with higher loyalty classifications (i.e., long-term customers) tend to have larger bank deposits and more diverse financial products (e.g., savings accounts, foreign currency accounts).

**4.Customer Segmentation**: Clustering analysis reveals statistically distinct customer segments differentiated by income level and financial product utilization.

* High-income customers exhibit disproportionately higher credit card balances, while maintaining comparatively lower balances in savings and checking accounts.

* Middle-income customers represent the largest share of business lending exposure and demonstrate stronger liquidity positions, reflected in higher balances across savings and transactional (checking) accounts.
  
* Low-income customers show lower participation in business lending and maintain smaller balances in savings and checking accounts relative to the other segments.


















