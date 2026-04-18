### Saas Revenue & Growth Analysis

-- 1. Total Monthly Recurring Revenue(MRR)
SELECT
      SUM(monthly_fee) AS MRR
FROM customers;
     
-- 2. Total Customers Signed-up
SELECT
      COUNT(DISTINCT customer_id) AS total_customers
FROM customers;

-- 3. Total Subscriber 
SELECT
      COUNT(*) AS total_subscribers
FROM subscriptions;

-- 4. Total Revenue by revenue type
SELECT
     revenue_type,
     SUM(amount) AS total_revenue
FROM revenue
GROUP BY revenue_type;

-- 5. Signup-to-Subscriber Ratio
SELECT
        ROUND(100.0 * (SELECT COUNT(*) FROM subscriptions)/COUNT(*),2) AS signup_conversion
FROM customers;

-- 6. Average Customer Acquisition Cost
SELECT
      ROUND(AVG(acquisition_cost),2) AS Avg_CAC
FROM customers;

-- 7. Customer count and MRR by plan type
SELECT
      c.plan_type,
      COUNT(*) AS total_customer,
      SUM(r.amount) AS revenue
FROM customers AS c
JOIN revenue AS r
     ON c.customer_id = r.customer_id
GROUP BY plan_type
ORDER BY revenue DESC;

-- 8. Signup Trend
SELECT
	  DATE_FORMAT(STR_TO_DATE(signup_date,'%Y-%m-%d'),'%Y') AS year,
      QUARTER(DATE_FORMAT(STR_TO_DATE(signup_date,'%Y-%m-%d'),'%Y-%m-%d')) AS quarter,
      COUNT(*) AS total_signups
FROM customers
GROUP BY year, quarter
ORDER BY year, quarter;

### Customer Churn Analysis

-- 1. MRR lost to churn
SELECT 
      SUM(monthly_fee) AS mrr_lost
FROM customers
WHERE churn_date != ''; 
     
-- 2. Retention Rate
SELECT
      ROUND(100.0 * SUM(CASE WHEN churn_date = '' THEN 1 ELSE 0 END)
                 /COUNT(*),2) AS retention_rate
FROM customers;

--  3. Churn Rate
SELECT
      ROUND(100.0 * SUM(CASE WHEN churn_date != '' THEN 1 ELSE 0 END)
                 /COUNT(*),2) AS churn_rate
FROM customers;


-- 4. Churn Rate by plan type
SELECT
      plan_type,
      ROUND(100.0 * SUM(CASE WHEN churn_date != '' THEN 1 ELSE 0 END)/COUNT(*),2) AS churn_rate
FROM customers
GROUP BY plan_type
ORDER BY churn_rate DESC;

-- 5. Number of days customers stays before leaving
SELECT
      CASE
          WHEN tenure_days <= 30 THEN '0-30 days'
          WHEN tenure_days <= 90 THEN '31-90 days'
          ELSE '90+ days'
          END AS tenure_bucket,
          COUNT(customer_id) AS churned_customers
FROM
(
SELECT
      customer_id,
      signup_date,
      churn_date,
      DATEDIFF(churn_date,signup_date) AS tenure_days
FROM customers
WHERE churn_date != ''
ORDER BY tenure_days DESC
)t
GROUP BY tenure_bucket;


-- 6. Revenue Recovered Before Churn vs cac
SELECT
      plan_type,
      SUM(recovery) AS revenue_recovered,
      SUM(acquisition_cost) AS cac
FROM
(      
SELECT
      customer_id,
      plan_type,
      monthly_fee,
      acquisition_cost,
	  TIMESTAMPDIFF(month,signup_date,churn_date) AS tenure_month,
      (monthly_fee * TIMESTAMPDIFF(month,signup_date,churn_date)) AS recovery
FROM customers
WHERE churn_date != ''
) t
GROUP BY plan_type;



