# Saas Customer Churn & Revenue KPI Analysis
	
## 1. Background and Overview

This project analyses the performance of a SaaS business using customer, revenue and subscription data.

The objective is to understand how business is performing in terms :-

	⁃	how revenue is growing over time
	⁃	which subscription type generate the most revenue
	⁃	what is the current retention & churn rate
	⁃	which plan type has the highest customer churn
	⁃	How many customers are joining quarterly
	⁃	What is the average revenue generated per user

Workflow : 

	⁃	Initial data validation in Excel
	⁃	KPI and business analysis using SQL
	⁃	Dashboard in Tableau
	⁃	Recommendations based on insights

## 2. Data Structure and Overview

### Data Structure :

The dataset consists of three tables :-

## Customers Table :


## Revenue Table :


## Subscriptions Table :




## 3. Executive Summary

The analysis shows customer acquisition and revenue growth, alongside retention and churn in subscription plan

### A. Revenue & Growth Dashboard



###  Key KPI’s

	⁃	Total MRR :- 2,49,000
	⁃	Total Customers :- 1000
	⁃	 CAC :- 249.9
	⁃	 ARPU :- 250

### B. Customer Churn Dashboard



###  Key KPI’s

	⁃	MRR Lost to Churn :- 42000
	⁃	Retention Rate :- 83.2 %
	⁃	Churn Rate :- 16.8 %
	⁃	Avg Customer Tenure :- 5 months

###  Key Findings

	⁃	In 2024, MRR peaked in Q4 to Q1 of 2025 , after that it  gradually declined.

	⁃	Enterprise plan has highest MRR

	⁃	In 2024 signup decreased gradually and rapidly increased in Q4.
     In 2025, signups are steady

	⁃	Basic subscription plan have high churn rate but all the plans have similar churn rate

	⁃	Most customers stay for minimum 5 months before leaving

	⁃	Customer Churn increases rapidly after Q4 of 2024


## 4. Insights Deep Dive

### A : Saas Revenue & Growth Dashboard

(i) The business generated a total MRR of 249,800 with Enterprise Subscription Plan contributing the highest share of approximately 167000.

This shows higher-tier customers are primary revenue drivers 

(ii) The customer base grown to 1000 customers, with quarterly signups trend remaining stable.

Customers acquisition seems to be consistent

(iii) Quarterly MRR shows strong growth from 2024 to early 2025.

After that  a decline in Q2-2025.

This may indicate :-
	•	Increased churn
	•	Possibly fewer premium subscription sign-ups
	•	Incomplete quarter data
	•	Seasonal trend

This suggests a recent slowdown in recurring revenue growth.

### B. Customer Churn Dashboard

(i) The overall churn rate is 16.8 %, while retention rate’s at 83.2%.

(ii) Average Customer Tenure is 5 months.
This suggests moderate retention but indicates that many customers are not staying long enough for generating a good Lifetime value.

(iii) The 90+ days bucket has highest churn count of 103 customers.

This shows that  most customers who 
Customers may initially see value but fail to continue usage overtime


(iii) Across all plans, revenue has been recovered before customer churn.
 That is customers tenure is long enough to recover their acquisition cost.


## 5. Recommendations


### High Churn after 90+ days

The churn dashboard shows that most customers are leaving after 90 days and churn rate remains similar across Basic, Pro and Enterprise plan.
This suggest that the issues may be more closely related to long-term usage rather than a specific plan:

	⁃	Send reminder and re-engagement mails after first 2-3 months
	⁃	offer discounts or plan upgrade benefits
	⁃	Check whether customers facing any issues across plans
	⁃	Run feedback surveys across all plans


### MRR drop after Q1 of 2025

The revenue dashboard shows decline in MRR:

	⁃	Analyse which plan caused the most drop
	⁃	Check whether churn increased during this quarter 


### Lower contribution of Basic and Pro plans

	⁃	Improve features in lower plans
	⁃	Create upgrade offers from Basic to Pro/Enterprise
	⁃	Highlight benefits of premium plans


## 6. Data Source

The dataset  used in this project is synthetic and sourced from Kaggle.

	•	Dataset Name : SaaS Business Metrics: Customers, Plans & Revenue
	•	Link : https://www.kaggle.com/datasets/halaturkialotaibi/saas-business-metrics-customers-plans-and-revenue


