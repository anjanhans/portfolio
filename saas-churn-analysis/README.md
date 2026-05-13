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

<img width="1241" height="790" alt="3527daa8-b6cd-456c-b63e-aa413041e579" src="https://github.com/user-attachments/assets/b5589997-6701-4034-aa95-9dff83e408df" />

###  Key KPI’s

⁃	Total MRR :- ₹2,49,000

⁃	Total Customers :- 1000

⁃	 CAC :- ₹110

⁃	 ARPU :- ₹250

### B. Customer Churn Dashboard

<img width="1234" height="791" alt="e0f5feff-07e6-4410-ad2a-04a6d9f45e06" src="https://github.com/user-attachments/assets/44da1217-9ced-4b13-a14a-86de7f1035eb" />

###  Key KPI’s

- MRR Lost to Churn :- 42000
  
- Total Churned Customers :- 168
  
- Avg Customer Tenure :- 5 months
  
- Retention Rate :- 83.2 %
  
- Churn Rate :- 16.8 %

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

<img width="632" height="326" alt="ade9abf4-3ef1-4a43-833e-0bdb899907c9" src="https://github.com/user-attachments/assets/2b605dec-a599-4906-b868-ee93a52a0d7a" />

Customers acquisition seems to be consistent

(iii) MRR shows strong growth from 2024 to early 2025.

<img width="1227" height="314" alt="8205178c-6933-4804-9d84-5b2940031615" src="https://github.com/user-attachments/assets/4f5eea15-3ca5-484d-a8c2-b94a25cc9f21" />

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
 
<img width="825" height="352" alt="9e39e4ab-76de-4d5e-ac13-fe88484c3dbf" src="https://github.com/user-attachments/assets/7b30aadc-831c-4126-b3b3-ac8455ec8d64" />

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

⁃	Analyse which plan has the most drop

⁃	We saw the quarterly churn increased during this timeframe, this could be the reason         leading to MRR drop


### Lower contribution of Basic and Pro plans

⁃	Improve features in lower plans

⁃	Create upgrade offers from Basic to Pro/Enterprise

⁃	Highlight benefits of premium plans


## 6. Data Source

The dataset  used in this project is synthetic and sourced from Kaggle.

•	Dataset Name : SaaS Business Metrics: Customers, Plans & Revenue

•	Link : https://www.kaggle.com/datasets/halaturkialotaibi/saas-business-metrics-customers-plans-and-revenue


