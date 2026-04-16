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

### Workflow : 

⁃	Initial data validation in Excel

⁃	KPI and business analysis using SQL

⁃	Dashboard in Tableau

⁃	Recommendations based on insights

## 2. Data Structure and Overview

### Data Structure :

The dataset consists of three tables :-

## Customers Table :

<img width="742" height="670" alt="b84aece3-aa9e-41b7-a467-300bb763efe0" src="https://github.com/user-attachments/assets/7e7b4909-30b1-43a9-9dea-f65a169c3200" />


## Revenue Table :

<img width="744" height="670" alt="3a285576-6e8a-4424-ad04-91f03df01b34" src="https://github.com/user-attachments/assets/63d481bd-fba9-4850-88c0-9dfc85589cc7" />


## Subscriptions Table :

<img width="743" height="491" alt="5774d1f9-b631-4e09-b6b3-24b391794edd" src="https://github.com/user-attachments/assets/2fa73c79-398a-4d1d-b3df-2acd61731b62" />



## 3. Executive Summary

The analysis shows customer acquisition and revenue growth, alongside retention and churn in subscription plan

### A. Revenue & Growth Dashboard

<img width="1238" height="795" alt="85597c58-9771-4b3c-9162-7412f265e382" src="https://github.com/user-attachments/assets/b24b7101-99bb-4080-b5f6-efa248fd6bb1" />


###  Key KPI’s

⁃	Total MRR :- ₹2,49,000

⁃	Total Customers :- 1000

⁃	 CAC :- ₹110

⁃	 ARPU :- ₹250

### B. Customer Churn Dashboard

<img width="1234" height="794" alt="e4cf5547-e67c-46b4-a41c-b7ee1dfdf399" src="https://github.com/user-attachments/assets/313be113-3a6d-4391-a04e-49c19c15863f" />


###  Key KPI’s

⁃	MRR Lost to Churn :- ₹42,000

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

(i) The business generated a total MRR of ₹249,800 with Enterprise Subscription Plan contributing the highest share of approximately ₹167,000.

<img width="610" height="320" alt="d6e45490-607c-40ff-9279-782ae36b11a5" src="https://github.com/user-attachments/assets/923aa064-2e06-42e4-83e4-adf97e3bd25f" />

This shows higher-tier customers are primary revenue drivers 

(ii) The customer base grown to 1000 customers, with quarterly signups trend remaining stable.

<img width="613" height="320" alt="e44aadd2-1c3b-4ad8-86cf-c614c01966a5" src="https://github.com/user-attachments/assets/f40d1aa8-c54d-4b89-b29f-8bce4309e06e" />

Customers acquisition seems to be consistent

(iii) Quarterly MRR shows strong growth from 2024 to early 2025.

<img width="1233" height="317" alt="da66c8f0-c926-443d-a22d-9f69c8048076" src="https://github.com/user-attachments/assets/a822e7cb-b926-4a78-b06c-d4bdcf3e9ac5" />

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

<img width="441" height="310" alt="e8d660ff-0aa7-4308-9659-7c5d0c23713a" src="https://github.com/user-attachments/assets/fcb86a73-ae0a-41ec-a103-325d79efefb3" />

This shows that  most customers who 
Customers may initially see value but fail to continue usage overtime


(iii) Across all plans, revenue has been recovered before customer churn.
 That is customers tenure is long enough to recover their acquisition cost.
 
<img width="1234" height="353" alt="20ba102f-de3a-449e-bd51-e1a3c78140d3" src="https://github.com/user-attachments/assets/8ca1fdbe-63ad-43cb-bbac-6d12197b4a13" />


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


