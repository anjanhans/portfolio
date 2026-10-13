# SaaS Business Performance,Retention & Churn Analytics

## 1. Background and Overview

This project analyses a SaaS subscription business from January 2024 to June 2025 to understand revenue performance,customer acquisition and retention.
The analysis focuses on Monthly Recurring Revenue(MRR),customer growth, churn across subscription plans and recurring subscription fees from active customers.

We use the data available regarding customer and billings to find insights and identify areas where we could investigate opportunities to improve retention and revenue performance.

### Project Objectives:
* Track MRR,monthly MRR growth, new signups, active customers and ARPU.
* Understand customer churn and recurring subscription fees associated with them.
* Compare customer churn across the three subscription plans.
* Examine customer tenure before churn.
* Comparing customer acquisition costs with cumulative subscription revenue.

### Tools Used
* **Python Pandas:** Data preparation and validation
* **MySQL:** KPI calculations and business analysis
* **Tableau:** Dashboard development and data validation


## 2. Data Structure and Overview
Here we have three raw datasets:
* customers.csv
* revenue.csv
* subscriptions.csv

The customer and revenue datasets were used to prepare two tables for analysis:
* dim_customers
* fact_revenue

### Raw Datasets

**1. Customers** contain 10000 customer records with 6 columns:

"customer_id","signup_date","plan_type","monthly_fee","acquisition_cost","churn_date"

<img width="742" height="670" alt="7e271f5b-2007-41d1-ade4-d858dab04e30" src="https://github.com/user-attachments/assets/3d913621-f83c-4d98-9415-93378c42112e" />


This dataset provides the customer-level information needed to analyze subscription plans, acquisition costs, and churn.

**2.Revenue** contains 988 billing records with six columns:

"subscription_id","customer_id","month","monthly_fee","revenue_type","amount"

<img width="744" height="670" alt="3932ae0d-2b9c-4fc0-800d-eebcb57d3c1e" src="https://github.com/user-attachments/assets/47fc56ac-15d1-407b-ba0e-7ba34a4f23e6" />


It provides the available monthly billing information and links each billing record to a customer.

**3.Subscriptions** contains 988 records with four columns:

"subscription_id","customer_id","month","monthly_fee"

<img width="743" height="491" alt="01443557-3abf-47e2-a83e-21ccf6d39202" src="https://github.com/user-attachments/assets/7142b5b9-aad9-42d6-b8c1-04dbb9175b0b" />


This dataset was not used in the final analysis because its available fields overlap with the revenue dataset and do not provide additional information required by the selected dashboards.

### Prepared Tables

**1. "dim_customers"**

A customer level table containing one record per customer.It contains the original customer information along with derived fields used for analysis such as active status, tenure, tenure cohort, and total subscription revenue.

**2. "fact_revenue"**

A monthly billing table containing customer-level subscription records across the analysis period. It has monthly revenue trends, churn-associated MRR, and other time-based calculations.

The two prepared tables are connected through "customer_id".

### Dataset Overview

* Raw customer records | 1,000
* Raw revenue records | 988
* Raw subscription records | 988
* Prepared customer records | 1,000
* Prepared monthly billing records | 8,793
* Analysis period | Jan 2024 – Jun 2025
* Observation cutoff | June 30, 2025


## 3. Data Preparation
Pandas were used to prepare the datasets before they were imported into MySQL for analysis.

The preparation process included:

* Checking the raw datasets for missing values,duplicate records and data inconsistencies.
* Grouping subscription details of every individual customers into "dim_customers",with one record per customer.
* Preparing "fact_revenue" for monthly subscription analysis.
* Deriving customer status and tenure_related fields from the available customer and billing information.
* Grouping customer tenure into cohorts to help in churn analysis.

The final datasets "dim_customers" and "fact_revenue" contains 1000 customer records and 8,793 monthly billing records.

MySQL was then used to calculate business metrics and analyse monthly recurring revenue trend, customer acquisition and churn.

Tableau was used to present the results through two dashboards:**SaaS Business Performance** and **Customer Retention & Churn**.

## 4. Executive Summary

<img width="1274" height="783" alt="9a97bf53-bbd0-45cb-97ea-8b43d29e20f1" src="https://github.com/user-attachments/assets/f7ed0692-a3b9-424e-a377-7937e98331f5" />


The analysis shows that out of 1000 distinct customers,832 were active and 168 had churned by June 2025.This represents an overall churn of 16.80% across the customer base.

In June 2025,month_end MRR reached  ₹207,950.We saw **growth of 5.91% in month-end MRR after May 2025**.The business also recorded 50 new signups in June.These metrics provide a snapshot of recurring revenue performance and customer acquisition at the end of the analysis period.

<img width="1273" height="790" alt="ba6b8f22-0d97-48fa-923c-82f5aa77238f" src="https://github.com/user-attachments/assets/2604117c-2c09-4875-9799-2c04a70e412c" />


Meanwhile Customer churn was observed across all subscription plans.Basic plan recorded **58 churned customers,Enterprise recorded 57 and Pro plan recorded 53**,that is **17.7%,17.3%** and **15.5% churn rate** respectively.Therefore,Basic plan had the highest churn, while Pro had the lowest.

The analysis also examines churn associated recurring subscription fees, customer tenure before churn and compares acquisition costs and cumulative subscription revenue.Together, these help to identify where further investigation may be useful, particularly retention of customers by plan level and customer lifecycle management and improvement.

## 5. Insights Deep Dive

### A. Revenue Growth and Customer Acquisition

In June 2025,the business recorded ₹ 207,950 MRR,with month over month growth of 5.91%.It also acquired 50 new customers during the month.

Therefore, the business's recurring revenue increased from May to June while continuing to acquire customers.However,new signs alone do not explain the change in MRR.Changes in customers churn and fees per active customers can influence recurring revenue.

Monitoring MRR alongside active customers, signups and ARPU provides us a proper view of performance.

### B.Customer Churn Across Subscription Plans

<img width="685" height="333" alt="424bc18e-e5aa-472d-92f8-9637031b5c71" src="https://github.com/user-attachments/assets/f1ac2abc-de25-48a9-9df8-f1a144f808c2" />


Basic plan has 58 churned customers,57 for Enterprise and 53 for pro(17.7%, 17.3% and 15.5% respectively).These are relatively close, but comparing churn against each plan's customer base provides a clearer view of retention.

### C. Churn Associated Recurring Revenue

Customer churn affects both retention and recurring subscription revenue with them.The analysis assigns each churned customer's monthly subscription fee to the month in which their churn date falls.

The total churned revenue is ₹42,000 calculated by summing the monthly fee of customers who churned by June 30,2025,with each customer counted once.Reviewing the monthly churn associated MRR trend alongside churned customer counts helps distinguish the count of customer deoartures from the subscription value associated with those departures.

### D. Customer Tenure Before Churn

<img width="583" height="335" alt="939d8458-743a-4841-861c-2187d1228ba0" src="https://github.com/user-attachments/assets/594aef81-4692-4b79-a876-eec524cc6427" />


The tenure analysis groups churned customers according to how long they remained subscribed before leaving.This helps identify the lifecycle in which churned customers are concentrated.

Here, if a tenure group contains a noticeable concentration of churned customers, it provides a starting point to investigating customer engagement and whether the product continues to meet customer needs.
However the number of churned customers in a tenure group does not gives us the probability ti churn.

### E. Customer Acquisition Cost and Cumulative Subscription Revenue

<img width="565" height="298" alt="2815b5ea-2480-4f0d-a8ad-29704b3cba8f" src="https://github.com/user-attachments/assets/53dfe2aa-9005-4699-b9e4-82faa32347fa" />


The analysis helps to compare the cost of acquiring customers with the subscription revenue generated from them.However,cumulative subscription revenue can vary with customers tenure and it alone does not represent profit.

The comparison should be treated as an initial assessment rather than a measure of customer lifetime value or profitability of the plans.
Other necessary details are required for a proper evaluation.

## 6. Recommendations

### 1. Investigate higher churn rate in Basic plan

Basic recorded the highest churn rate approximately 17.7% as compared to Enterprise with 17.3% and 15.5% for Pro.Investigating whether customers with Basic plan face challenges regarding pricing, product features,onboarding or customer support.These factors should be checked with additional customer information before making changes or improvement of the plan.

### 2. Strengthen Retention Across the Customer Lifecycle

The tenure analysis shows us how the customer churn is concentrated.The business should review onboarding and experience during the early customer lifecycle.Targeted follow ups could be used for customers who show signs of disengagement.

### 3. Monitor Churn by Customer Count and Subscription Value

Tracking churned customers alongside churned MRR would help the business understand both the number of customer leaving and subscription value associated with them

### 4. Review Revenue Growth Alongside Customer Growth

MRR growth, new signups, active customers and ARPU should be monitored together.If signups increases without a improvement in MRR,the business should investigate customer churn and subscription plan of the customers.This would help explain changes in recurring revenue rather than relying on acquisition cost alone.

### 5. Evaluate Acquisition Cost Before Increasing Spend

The acquisition cost and cumulative subscription revenue comparison can be used to identify plans that require analysis.Before increasing acquisition spending, the business should also consider customer tenure,chuen and other costs to assess whether acquisition efforts generate sustainable value.

### 6. Collect Data to Understand Churn Reasons

The churn datasets provide information about customer plans, tenure,subscription fees and churn timing but they do not establish why customers leave.Adding churn reasons, product usage, customer feedback and support interactions would help business investigate the cause of churn and making retention strategies.

## 7. Data Source

* **Source:-** Kaggle
* **Name:-** SaaS Business Metrics: Customers, Plans & Revenue
* **Dataset Link:-** https://www.kaggle.com/datasets/halaturkialotaibi/saas-business-metrics-customers-plans-and-revenue

Its contains **synthetic** SaaS customer and subscription data. 










