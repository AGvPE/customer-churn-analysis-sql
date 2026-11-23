-- =========================================================
-- PROJECT: CUSTOMER CHURN ANALYSIS
-- ANALYST: Agape Watat
-- DATABASE: Customer_Churn_Analysis
-- TABLE: telco_customers
-- TOOL: DB Browser for SQLite
-- DATASET: IBM Telco Customer Churn
--
-- PROJECT OBJECTIVE:
-- To analyse customer churn patterns, identify high-risk
-- customer segments, and generate insights that can support
-- customer retention strategies.
-- =========================================================

-- =========================================================
-- SECTION 1: DATA OVERVIEW AND VALIDATION
-- =========================================================

-- QUERY 1: Total number of customer records
-- PURPOSE: To establish the total number of customers
-- available for analysis.

SELECT
    COUNT(*) AS total_customers
FROM telco_customers;


-- QUERY 2: Check the total number of churned customers
-- PURPOSE: To calculate the number of customers who
-- discontinued their services.

SELECT
    COUNT(*) AS total_churned_customers
FROM telco_customers
WHERE Churn = 'Yes';

-- =========================================================
-- SECTION 2: OVERALL CUSTOMER CHURN ANALYSIS
-- =========================================================

-- QUERY 3: Calculate overall customer churn and retention
-- PURPOSE: To determine the total customer population,
-- churned customers, retained customers, and their rates.

SELECT
    COUNT(*) AS total_customers,

    SUM(CASE
        WHEN Churn = 'Yes' THEN 1
        ELSE 0
    END) AS churned_customers,

    SUM(CASE
        WHEN Churn = 'No' THEN 1
        ELSE 0
    END) AS retained_customers,

    ROUND(
        100.0 * SUM(CASE
            WHEN Churn = 'Yes' THEN 1
            ELSE 0
        END) / COUNT(*),
        2
    ) AS churn_rate_pct,

    ROUND(
        100.0 * SUM(CASE
            WHEN Churn = 'No' THEN 1
            ELSE 0
        END) / COUNT(*),
        2
    ) AS retention_rate_pct

FROM telco_customers;

-- =========================================================
-- SECTION 3: CUSTOMER SEGMENTATION ANALYSIS
-- =========================================================

-- QUERY 4: Churn by contract type
-- PURPOSE: To compare customer churn across different
-- contract arrangements.

SELECT
    Contract,

    COUNT(*) AS total_customers,

    SUM(CASE
        WHEN Churn = 'Yes' THEN 1
        ELSE 0
    END) AS churned_customers,

    ROUND(
        100.0 * SUM(CASE
            WHEN Churn = 'Yes' THEN 1
            ELSE 0
        END) / COUNT(*),
        2
    ) AS churn_rate_pct

FROM telco_customers

GROUP BY Contract

ORDER BY churn_rate_pct DESC;

-- =========================================================
-- QUERY 5: CHURN BY PAYMENT METHOD
-- PURPOSE: To compare customer churn across different
-- payment methods.
-- =========================================================

SELECT
    PaymentMethod,

    COUNT(*) AS total_customers,

    SUM(CASE
        WHEN Churn = 'Yes' THEN 1
        ELSE 0
    END) AS churned_customers,

    ROUND(
        100.0 * SUM(CASE
            WHEN Churn = 'Yes' THEN 1
            ELSE 0
        END) / COUNT(*),
        2
    ) AS churn_rate_pct

FROM telco_customers

GROUP BY PaymentMethod

ORDER BY churn_rate_pct DESC;

-- =========================================================
-- QUERY 6: CHURN BY CUSTOMER TENURE
-- PURPOSE: To analyse churn rates across different
-- customer tenure groups.
-- =========================================================

SELECT
    CASE
        WHEN tenure <= 12 THEN '0-12 Months'
        WHEN tenure <= 24 THEN '13-24 Months'
        WHEN tenure <= 48 THEN '25-48 Months'
        WHEN tenure <= 60 THEN '49-60 Months'
        ELSE '61-72 Months'
    END AS tenure_group,

    COUNT(*) AS total_customers,

    SUM(CASE
        WHEN Churn = 'Yes' THEN 1
        ELSE 0
    END) AS churned_customers,

    ROUND(
        100.0 * SUM(CASE
            WHEN Churn = 'Yes' THEN 1
            ELSE 0
        END) / COUNT(*),
        2
    ) AS churn_rate_pct

FROM telco_customers

GROUP BY tenure_group

ORDER BY
    CASE tenure_group
        WHEN '0-12 Months' THEN 1
        WHEN '13-24 Months' THEN 2
        WHEN '25-48 Months' THEN 3
        WHEN '49-60 Months' THEN 4
        ELSE 5
    END;

-- =========================================================
-- QUERY 7: CHURN BY INTERNET SERVICE
-- PURPOSE: To compare customer churn across different
-- internet service categories.
-- =========================================================

SELECT
    InternetService,

    COUNT(*) AS total_customers,

    SUM(CASE
        WHEN Churn = 'Yes' THEN 1
        ELSE 0
    END) AS churned_customers,

    ROUND(
        100.0 * SUM(CASE
            WHEN Churn = 'Yes' THEN 1
            ELSE 0
        END) / COUNT(*),
        2
    ) AS churn_rate_pct

FROM telco_customers

GROUP BY InternetService

ORDER BY churn_rate_pct DESC;

-- =========================================================
-- QUERY 8: CHURN BY SENIOR CITIZEN STATUS
-- PURPOSE: To compare customer churn between senior
-- and non-senior customers.
-- =========================================================

SELECT
    SeniorCitizen,

    COUNT(*) AS total_customers,

    SUM(CASE
        WHEN Churn = 'Yes' THEN 1
        ELSE 0
    END) AS churned_customers,

    ROUND(
        100.0 * SUM(CASE
            WHEN Churn = 'Yes' THEN 1
            ELSE 0
        END) / COUNT(*),
        2
    ) AS churn_rate_pct

FROM telco_customers

GROUP BY SeniorCitizen

ORDER BY churn_rate_pct DESC;

-- =========================================================
-- QUERY 9: AVERAGE CHARGES BY CHURN STATUS
-- PURPOSE: To compare the average monthly and total
-- charges of customers who churned and those retained.
-- =========================================================

SELECT
    Churn,

    COUNT(*) AS total_customers,

    ROUND(AVG(MonthlyCharges), 2) AS avg_monthly_charges,

    ROUND(AVG(TotalCharges), 2) AS avg_total_charges

FROM telco_customers

GROUP BY Churn

ORDER BY Churn;

-- =========================================================
-- QUERY 10: CHURN BY TECHNICAL SUPPORT
-- PURPOSE: To examine the relationship between technical
-- support availability and customer churn.
-- =========================================================

SELECT
    TechSupport,

    COUNT(*) AS total_customers,

    SUM(CASE
        WHEN Churn = 'Yes' THEN 1
        ELSE 0
    END) AS churned_customers,

    ROUND(
        100.0 * SUM(CASE
            WHEN Churn = 'Yes' THEN 1
            ELSE 0
        END) / COUNT(*),
        2
    ) AS churn_rate_pct

FROM telco_customers

GROUP BY TechSupport

ORDER BY churn_rate_pct DESC;

-- =========================================================
-- QUERY 11: CHURN BY ONLINE SECURITY
-- PURPOSE: To examine the relationship between online
-- security subscription and customer churn.
-- =========================================================

SELECT
    OnlineSecurity,

    COUNT(*) AS total_customers,

    SUM(CASE
        WHEN Churn = 'Yes' THEN 1
        ELSE 0
    END) AS churned_customers,

    ROUND(
        100.0 * SUM(CASE
            WHEN Churn = 'Yes' THEN 1
            ELSE 0
        END) / COUNT(*),
        2
    ) AS churn_rate_pct

FROM telco_customers

GROUP BY OnlineSecurity

ORDER BY churn_rate_pct DESC;

-- =========================================================
-- QUERY 12: CHURN BY COMBINED SUPPORT AND SECURITY SERVICES
-- PURPOSE: To compare churn among customers based on
-- their combination of technical support and online security.
-- =========================================================

SELECT
    CASE
        WHEN TechSupport = 'Yes'
         AND OnlineSecurity = 'Yes'
            THEN 'Both Services'

        WHEN TechSupport = 'No'
         AND OnlineSecurity = 'No'
            THEN 'Neither Service'

        ELSE 'One Service'
    END AS service_category,

    COUNT(*) AS total_customers,

    SUM(CASE
        WHEN Churn = 'Yes' THEN 1
        ELSE 0
    END) AS churned_customers,

    ROUND(
        100.0 * SUM(CASE
            WHEN Churn = 'Yes' THEN 1
            ELSE 0
        END) / COUNT(*),
        2
    ) AS churn_rate_pct

FROM telco_customers

WHERE InternetService != 'No'

GROUP BY service_category

ORDER BY churn_rate_pct DESC;

-- =========================================================
-- QUERY 13: CHURN BY CONTRACT TYPE AND INTERNET SERVICE
-- PURPOSE: To identify customer segments with high and
-- low churn rates based on contract and internet service.
-- =========================================================

SELECT
    Contract,
    InternetService,

    COUNT(*) AS total_customers,

    SUM(CASE
        WHEN Churn = 'Yes' THEN 1
        ELSE 0
    END) AS churned_customers,

    ROUND(
        100.0 * SUM(CASE
            WHEN Churn = 'Yes' THEN 1
            ELSE 0
        END) / COUNT(*),
        2
    ) AS churn_rate_pct

FROM telco_customers

WHERE InternetService != 'No'

GROUP BY
    Contract,
    InternetService

ORDER BY churn_rate_pct DESC;

-- =========================================================
-- QUERY 14: AVERAGE MONTHLY CHARGES BY CONTRACT AND CHURN
-- PURPOSE: To compare average monthly charges across
-- contract types and customer churn status.
-- =========================================================

SELECT
    Contract,
    Churn,

    COUNT(*) AS total_customers,

    ROUND(AVG(MonthlyCharges), 2) AS avg_monthly_charges

FROM telco_customers

GROUP BY
    Contract,
    Churn

ORDER BY
    Contract,
    Churn;