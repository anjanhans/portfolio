CREATE DATABASE IF NOT EXISTS saas_analytics;

-- CREATING SAAS DATABASE --
USE saas_analytics;

DROP TABLE IF EXISTS fact_revenue;
DROP TABLE IF EXISTS dim_customers;

-- CREATE CUSTOMER AND MONTHLY BILLING TABLES --

CREATE TABLE dim_customers (
    customer_id INT NOT NULL PRIMARY KEY,
    signup_date DATE NOT NULL,
    plan_type VARCHAR(12) NOT NULL,
    monthly_fee INT NOT NULL,
    acquisition_cost INT NOT NULL,
    churn_date DATE NULL,
    is_active CHAR(2),
    tenure_days INT NOT NULL,
    tenure_months INT NOT NULL,
    tenure_cohort VARCHAR(50) NOT NULL,
    total_subscription_revenue DECIMAL(10, 2) NOT NULL
);

CREATE TABLE fact_revenue (
    customer_id INT NOT NULL,
    month VARCHAR(7) NOT NULL,
    monthly_fee INT NOT NULL,
    revenue_type VARCHAR(4),
    customer_status VARCHAR(8) NOT NULL,
    FOREIGN KEY (customer_id)
        REFERENCES dim_customers(customer_id)
        ON UPDATE CASCADE 
        ON DELETE RESTRICT
);  

-- IMPORTING PREPARED CUSTOMER AND BILLING DATASETS --
  
LOAD DATA LOCAL INFILE '/tmp/dim_customers.csv'
INTO TABLE dim_customers
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
    customer_id, 
    signup_date, 
    plan_type,
    monthly_fee,
    acquisition_cost, 
    @vchurn_date,
    is_active,
    tenure_days,
    tenure_months, 
    tenure_cohort, 
    total_subscription_revenue
)
SET churn_date = NULLIF(@vchurn_date, '');

LOAD DATA LOCAL INFILE '/tmp/fact_revenue.csv'
INTO TABLE fact_revenue
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
    customer_id, 
    month, 
    monthly_fee,
    revenue_type,
    customer_status
);
-- TOTAL UNIQUE CUSTOMERS --
SELECT
    COUNT(DISTINCT customer_id) AS unique_users
FROM dim_customers;

-- TOTAL BILLING RECORD --
SELECT
    COUNT(*) AS total_billing_records
FROM fact_revenue;

-- CUSTOMER STATUS DISTRIBUTION --
SELECT
    CASE 
      WHEN is_active = 1 THEN 'Active'
      WHEN is_active = 0 THEN 'Churned'
	END AS customer_status,
    COUNT(*) AS total_customers,
    ROUND(100.0 * COUNT(*) / (SELECT COUNT(*) FROM dim_customers),2) AS customer_percentage
FROM dim_customers
GROUP BY is_active;

-- MINIMUM AND MAXIMUM BILLING DATE --
SELECT
    MIN(month) AS first_month,
    MAX(month) AS last_month,
    COUNT(DISTINCT month) AS months_covered
FROM fact_revenue;

-- CUSTOMERS DISTRIBUTON BY PLAN TYPE --

SELECT
    plan_type,
    COUNT(*) AS total_customers,
    ROUND(100.0 * COUNT(*) / (SELECT COUNT(*) FROM dim_customers),2) AS customer_pct
FROM dim_customers
GROUP BY plan_type
ORDER BY total_customers DESC;

-- MONTHLY SIGN-UP'S BY SUBSCRIPTION PLAN (2024-01 TO 2025-06) --

SELECT 
    plan_type,
    SUM(CASE WHEN DATE_FORMAT(signup_date, '%Y-%m') = '2024-01' THEN 1 ELSE 0 END) AS `2024-01`,
    SUM(CASE WHEN DATE_FORMAT(signup_date, '%Y-%m') = '2024-02' THEN 1 ELSE 0 END) AS `2024-02`,
    SUM(CASE WHEN DATE_FORMAT(signup_date, '%Y-%m') = '2024-03' THEN 1 ELSE 0 END) AS `2024-03`,
    SUM(CASE WHEN DATE_FORMAT(signup_date, '%Y-%m') = '2024-04' THEN 1 ELSE 0 END) AS `2024-04`,
    SUM(CASE WHEN DATE_FORMAT(signup_date, '%Y-%m') = '2024-05' THEN 1 ELSE 0 END) AS `2024-05`,
    SUM(CASE WHEN DATE_FORMAT(signup_date, '%Y-%m') = '2024-06' THEN 1 ELSE 0 END) AS `2024-06`,
    SUM(CASE WHEN DATE_FORMAT(signup_date, '%Y-%m') = '2024-07' THEN 1 ELSE 0 END) AS `2024-07`,
    SUM(CASE WHEN DATE_FORMAT(signup_date, '%Y-%m') = '2024-08' THEN 1 ELSE 0 END) AS `2024-08`,
    SUM(CASE WHEN DATE_FORMAT(signup_date, '%Y-%m') = '2024-09' THEN 1 ELSE 0 END) AS `2024-09`,
    SUM(CASE WHEN DATE_FORMAT(signup_date, '%Y-%m') = '2024-10' THEN 1 ELSE 0 END) AS `2024-10`,
    SUM(CASE WHEN DATE_FORMAT(signup_date, '%Y-%m') = '2024-11' THEN 1 ELSE 0 END) AS `2024-11`,
    SUM(CASE WHEN DATE_FORMAT(signup_date, '%Y-%m') = '2024-12' THEN 1 ELSE 0 END) AS `2024-12`,
    SUM(CASE WHEN DATE_FORMAT(signup_date, '%Y-%m') = '2025-01' THEN 1 ELSE 0 END) AS `2025-01`,
    SUM(CASE WHEN DATE_FORMAT(signup_date, '%Y-%m') = '2025-02' THEN 1 ELSE 0 END) AS `2025-02`,
    SUM(CASE WHEN DATE_FORMAT(signup_date, '%Y-%m') = '2025-03' THEN 1 ELSE 0 END) AS `2025-03`,
    SUM(CASE WHEN DATE_FORMAT(signup_date, '%Y-%m') = '2025-04' THEN 1 ELSE 0 END) AS `2025-04`,
    SUM(CASE WHEN DATE_FORMAT(signup_date, '%Y-%m') = '2025-05' THEN 1 ELSE 0 END) AS `2025-05`,
    SUM(CASE WHEN DATE_FORMAT(signup_date, '%Y-%m') = '2025-06' THEN 1 ELSE 0 END) AS `2025-06`
FROM dim_customers
GROUP BY plan_type;

-- JUNE 2025 BUSINESS PERFORMANCE KPIs --

SELECT
    SUM(monthly_fee) AS current_mrr,
    COUNT(*) AS active_customers,
    ROUND(SUM(monthly_fee)/NULLIF(COUNT(*),0),2) AS Arpu,
    SUM(monthly_fee) * 12 AS annualized_run_Rate_arr
FROM dim_customers AS d
WHERE signup_date <= '2025-06-30' AND (churn_date IS NULL OR churn_date > '2025-06-30');

-- NEW CUSTOMER SIGNUPS:June 2025 --

SELECT
    COUNT(*) AS new_signups
FROM dim_customers
WHERE signup_date >= '2025-06-01' AND signup_date < '2025-07-01';

-- MONTH OVER MONTH MRR GROWTH: MAY TO JUNE 2025 --

WITH may_june AS (
   SELECT
    SUM(CASE WHEN month = '2025-06' AND customer_status = 'Active' THEN monthly_fee ELSE 0 END) AS june_mrr,
	SUM(CASE WHEN month = '2025-05' AND customer_status = 'Active' THEN monthly_fee ELSE 0 END) AS may_mrr
   FROM fact_revenue
)
SELECT
     ROUND((100.0 * (june_mrr - may_mrr))/may_mrr,2) AS may_june_growth
FROM may_june;

-- MONTHLY CUSTOMER ACQUISITION TREND --

SELECT
    DATE_FORMAT(signup_date,'%Y-%m') AS month,
	COUNT(*) AS new_signups
FROM dim_customers 
WHERE signup_date >= '2024-01-01' AND signup_date < '2025-07-01'
GROUP BY DATE_FORMAT(signup_date,'%Y-%m')
ORDER BY DATE_FORMAT(signup_date,'%Y-%m') ASC;

-- MONTHLY SUBSCRIPTION REVENUE BY PLAN --

SELECT 
    d.plan_type,
    SUM(CASE WHEN f.month = '2024-01' THEN f.monthly_fee ELSE 0 END) AS `2024-01`,
    SUM(CASE WHEN f.month = '2024-02' THEN f.monthly_fee ELSE 0 END) AS `2024-02`,
    SUM(CASE WHEN f.month = '2024-03' THEN f.monthly_fee ELSE 0 END) AS `2024-03`,
    SUM(CASE WHEN f.month = '2024-04' THEN f.monthly_fee ELSE 0 END) AS `2024-04`,
    SUM(CASE WHEN f.month = '2024-05' THEN f.monthly_fee ELSE 0 END) AS `2024-05`,
    SUM(CASE WHEN f.month = '2024-06' THEN f.monthly_fee ELSE 0 END) AS `2024-06`,
    SUM(CASE WHEN f.month = '2024-07' THEN f.monthly_fee ELSE 0 END) AS `2024-07`,
    SUM(CASE WHEN f.month = '2024-08' THEN f.monthly_fee ELSE 0 END) AS `2024-08`,
    SUM(CASE WHEN f.month = '2024-09' THEN f.monthly_fee ELSE 0 END) AS `2024-09`,
    SUM(CASE WHEN f.month = '2024-10' THEN f.monthly_fee ELSE 0 END) AS `2024-10`,
    SUM(CASE WHEN f.month = '2024-11' THEN f.monthly_fee ELSE 0 END) AS `2024-11`,
    SUM(CASE WHEN f.month = '2024-12' THEN f.monthly_fee ELSE 0 END) AS `2024-12`,
    SUM(CASE WHEN f.month = '2025-01' THEN f.monthly_fee ELSE 0 END) AS `2025-01`,
    SUM(CASE WHEN f.month = '2025-02' THEN f.monthly_fee ELSE 0 END) AS `2025-02`,
    SUM(CASE WHEN f.month = '2025-03' THEN f.monthly_fee ELSE 0 END) AS `2025-03`,
    SUM(CASE WHEN f.month = '2025-04' THEN f.monthly_fee ELSE 0 END) AS `2025-04`,
    SUM(CASE WHEN f.month = '2025-05' THEN f.monthly_fee ELSE 0 END) AS `2025-05`,
    SUM(CASE WHEN f.month = '2025-06' THEN f.monthly_fee ELSE 0 END) AS `2025-06`
FROM dim_customers AS d
JOIN fact_revenue AS f
  ON d.customer_id = f.customer_id
GROUP BY d.plan_type;

-- CUSTOMER ACQUISITION COST vs. CUMULATIVE SUBSCRIPTION REVENUE BY PLAN --

SELECT
    plan_type,
    ROUND(AVG(acquisition_cost),2) AS average_cac,
    ROUND(AVG(total_subscription_revenue),2) AS average_cumulative_subscription_revenue
FROM dim_customers
GROUP BY plan_type
ORDER BY plan_type;

-- MONTHLY CUSTOMER CHURN TREND --

SELECT
    DATE_FORMAT(churn_date,'%Y-%m') AS yr_month,
    COUNT(*) AS churned_customers
FROM dim_customers
WHERE is_active = '0'
GROUP BY DATE_FORMAT(churn_date,'%Y-%m')
ORDER BY DATE_FORMAT(churn_date,'%Y-%m') ASC;

-- CHURNED ASSOCIATED FEES MATCHED TO BILLING MONTH --

SELECT
    f.month,
    SUM(f.monthly_fee) AS churned_mrr
FROM fact_revenue AS f
JOIN dim_customers AS d
  ON f.customer_id = d.customer_id
WHERE d.churn_date IS NOT NULL AND DATE_FORMAT(d.churn_date, '%Y-%m') = f.month
GROUP BY f.month
ORDER BY f.month ASC;

-- CHURNED CUSTOMERS BY TENURE COHORT

SELECT
    tenure_cohort,
    COUNT(*) AS customer_count
FROM dim_customers
WHERE is_active = '0'
GROUP BY tenure_cohort;






    

      

