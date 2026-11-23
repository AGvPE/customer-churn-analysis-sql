# Customer Churn Analysis Using SQL

## Project Overview

This project analyses customer churn within a telecommunications company using SQL and the IBM Telco Customer Churn dataset.

The objective is to identify customer segments with higher churn rates, understand patterns associated with customer retention, and develop data-driven recommendations to support business decision-making.

The analysis was conducted using SQLite, with queries executed in DB Browser for SQLite.

## Business Problem

Customer churn can negatively affect revenue, customer lifetime value, and business growth.

The business needs to understand which customer segments are more likely to leave and what customer characteristics are associated with higher churn rates.

This project uses SQL to investigate churn patterns across different customer attributes and service categories, providing insights that can help inform customer retention strategies.

## Project Objectives

- Calculate the total number of customers, churned customers, and retained customers.
- Determine the overall churn and retention rates.
- Analyse churn by contract type and payment method.
- Investigate churn patterns across customer tenure and internet service categories.
- Examine churn in relation to senior citizen status, technical support, and online security.
- Compare average monthly and total charges between churned and retained customers.
- Identify customer segments with relatively high churn rates.
- Develop actionable recommendations based on the analysis.

## Dataset Description

- **Dataset:** IBM Telco Customer Churn
- **Source:** Kaggle
- **Total Records:** 7,043 customer records
- **Database Table:** `telco_customers`
- **Target Variable:** `Churn`

The dataset contains customer demographic information, account details, subscribed services, billing information, and churn status.

## Tools and Technologies

- **SQL:** Data querying, aggregation, filtering, and segmentation.
- **SQLite:** Relational database management.
- **DB Browser for SQLite:** Database import, SQL execution, and result inspection.
- **TextEdit:** SQL script and documentation editing.
- **Microsoft Word:** Project report preparation.

## Analysis Performed

The analysis was conducted using 14 SQL queries covering the following areas:

1. Total customer records.
2. Total churned customers.
3. Overall churn and retention rates.
4. Churn by contract type.
5. Churn by payment method.
6. Churn by customer tenure.
7. Churn by internet service.
8. Churn by senior citizen status.
9. Average monthly and total charges by churn status.
10. Churn by technical support subscription.
11. Churn by online security subscription.
12. Churn by combined technical support and online security subscriptions.
13. Churn by contract type and internet service.
14. Average monthly charges by contract type and churn status.

SQL techniques used include:

- SELECT and WHERE
- GROUP BY and ORDER BY
- COUNT(), SUM(), and AVG()
- CASE WHEN conditional logic
- ROUND() for numerical formatting
- Aggregate calculations and percentage analysis

## Key Findings

The analysis produced the following insights:

- **Overall Churn:** 1,869 out of 7,043 customers churned, representing a churn rate of 26.54%.
- **Contract Type:** Month-to-month customers recorded the highest churn rate at 42.71%, while two-year contract customers recorded 2.83%.
- **Payment Method:** Electronic check users had the highest churn rate at 45.29%.
- **Customer Tenure:** Customers with 0–12 months of tenure recorded the highest churn rate at 47.44%.
- **Internet Service:** Fiber optic customers recorded a churn rate of 41.89%.
- **Technical Support:** Customers without technical support recorded a churn rate of 41.64%, compared with 15.17% among customers with technical support.
- **Online Security:** Customers without online security recorded a churn rate of 41.77%, compared with 14.61% among customers with online security.
- **Combined Services:** Customers with neither technical support nor online security recorded a churn rate of 48.96%, compared with 9.01% among customers with both services.
- **High-Risk Segment:** Month-to-month fiber optic customers recorded a churn rate of 54.61%.
- **Monthly Charges:** Churned customers had higher average monthly charges (74.44) than retained customers (61.27).

These findings represent observed associations within the dataset and do not establish causation.

## Business Recommendations

Based on the findings, the following recommendations are proposed:

1. **Improve New Customer Retention:** Introduce onboarding programmes and early engagement strategies for customers within their first year.
2. **Encourage Longer-Term Contracts:** Explore incentives that encourage customers to move from month-to-month subscriptions to longer-term contracts.
3. **Investigate Fiber Optic Churn:** Review service quality, pricing, and customer experience among fiber optic customers.
4. **Review Payment Experience:** Investigate the high churn rate among electronic check users.
5. **Promote Additional Services:** Improve awareness and accessibility of technical support and online security subscriptions.
6. **Review Pricing and Customer Value:** Examine pricing structures and perceived value, particularly among customers who churned.
7. **Use Customer Segmentation:** Develop targeted retention strategies for customer groups with relatively high churn rates.

Further investigation would be necessary to establish the underlying reasons for these churn patterns.

## Project Structure

Customer Churn Analysis - SQL Portfolio/

├── SQL Queries/
│   └── customer_churn_analysis.sql
│
├── Project Documentation/
│   ├── Customer Churn Analysis - Project Documentation.txt
│   └── Customer Churn Analysis - SQL Portfolio Report.docx
│
├── Supporting Materials/
│   ├── 01_Total_Customer_Count.png
│   ├── 02_Overall_Churn_Analysis.png
│   ├── 03_Churn_By_Contract_Type.png
│   └── ... (remaining supporting screenshots)
│
└── README.md

## Skills Demonstrated

- SQL querying and data analysis.
- SQLite database management.
- Data aggregation and segmentation.
- Conditional logic and percentage calculations.
- Exploratory data analysis.
- Customer churn and retention analysis.
- Business insight generation.
- Data-driven recommendations.
- Analytical reporting and documentation.

## Project Limitations

- The analysis is descriptive and does not establish cause-and-effect relationships.
- The findings are specific to the available IBM Telco Customer Churn dataset.
- The dataset does not provide detailed customer feedback or reasons for leaving.
- No predictive machine learning model was developed.
- The dataset does not establish a specific reporting period for interpreting the calculated churn rate.

## Conclusion

This project demonstrates how SQL can be used to transform raw customer data into meaningful business insights. By analysing 7,043 customer records, the project identified customer segments with different churn patterns and developed recommendations to support customer retention.

The project strengthened practical skills in SQL, data analysis, customer segmentation, and business interpretation.

## Author

**Agape Watat**

Data Analyst | SQL | Excel | Data Analysis

This project was completed as part of my data analytics portfolio to demonstrate practical SQL and business analysis skills.