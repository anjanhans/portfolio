# SaaS Business Performance,Retention & Churn Analytics

## 1. Background and Overview

This project analyses a SaaS subscription business from January 2024 to June 2025 to understand revenue performance,customer acquisition and retention.
RThe analysis focuses on Monthly Recurring Revenue(MRR),customer growth, churn across subscription plans and recurring subscription fees from active customers.

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
The analysis uses two related 

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

The analysis shows that out of 1000 distinct customers,832 were active and 168 had churned by June 2025.This represents an overall churn of 16.80% across the customer base.

In June 2025,month_end MRR reached  ₹207,950.We saw **growth of 5.91% in month-end MRR after May 2025**.The business also recorded 50 new signups in June.These metrics provide a snapshot of recurring revenue performance and customer acquisition at the end of the analysis period.

Meanwhile Customer churn was observed across all subscription plans.Basic plan recorded **58 churned customers,Enterprise recorded 57 and Pro plan recorded 53**,that is **17.7%,17.3%** and **15.5% churn rate** respectively.Therefore,Basic plan had the highest churn, while Pro had the lowest.

The analysis also examines churn associated recurring subscription fees, customer tenure before churn and compares acquisition costs and cumulative subscription revenue.Together, these help to identify where further investigation may be useful, particularly retention of customers by plan level and customer lifecycle management and improvement.

## 5. Insights Deep Dive

**Revenue Growth and Customer Acquisition**

In June 2025,the business recorded ₹ 207,950 MRR,with month over month growth of 5.91%.It also acquired 50 new customers during the month.

Therefore, the business's recurring revenue increased from May to June while continuing to acquire customers.However,new signs alone do not explain the change in MRR.Changes in customers churn and fees per active customers can influence recurring revenue.

Monitoring MRR alongside active customers, signups and ARPU provides us a proper view of performance.

**Customer Churn Across Subscription Plans**

Basic plan has 58 churned customers,57 for Enterprise and 53 for pro(17.7%, 17.3% and 15.5% respectively).These are relatively close, but comparing churn against each plan's customer base provides a clearer view of retention.

**Churn Associated Recurring Revenue**

Customer churn affects both retention and recurring subscription revenue with them.The analysis assigns each churned customer's monthly subscription fee to the month in which their churn date falls.

The total churned revenue is ₹42,000 calculated by summing the monthly fee of customers who churned by June 30,2025,with each customer counted once.Reviewing the monthly churn associated MRR trend alongside churned customer counts helps distinguish the count of customer deoartures from the subscription value associated with those departures.

**qCustomer Tenure Before Churn**

The tenure analysis groups churned customers according to how long they remained subscribed before leaving.This helps identify the lifecycle in which churned customers are concentrated.

Here, if a tenure group contains a noticeable concentration of churned customers, it provides a starting point to investigating customer engagement and whether the product continues to meet customer needs.
However the number of churned customers in a tenure group does not gives us the probability ti churn.














