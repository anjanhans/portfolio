# Saas Customer Churn & Revenue KPI Analysis
	
## 1. Background and Overview

This project analyses the performance of a SaaS business using customer, revenue and subscription data.

The objective is to understand how business is performing in terms of:-

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

<img width="1244" height="808" alt="a5d902eb-4415-4de5-b13c-1b4e428ab412" src="https://github.com/user-attachments/assets/fcad8873-a0e7-41ef-9df8-600b23543143" />

###  Key KPI’s

⁃	Total Reccuring Revenue :- ₹2,49,000

⁃	Total Customers :- 1000

⁃	 CAC :- ₹110

⁃	 ARPU :- ₹250

### B. Customer Churn Dashboard

<img width="1241" height="797" alt="cc64ebc2-d973-4085-a4fd-4bda154a199e" src="https://github.com/user-attachments/assets/af2e9303-a768-48c1-8967-b7c9735249e0" />


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

<img width="593" height="320" alt="7e33045a-b6ca-4b3e-8139-155b0e546d1e" src="https://github.com/user-attachments/assets/bfc567ce-ee60-4b3e-9570-72a4e3a5ccf3" />


This shows higher-tier customers are primary revenue drivers 

(ii) The customer base grown to 1000 customers, with quarterly signups trend remaining stable.

<img width="646" height="330" alt="60cc7c9c-5f1c-4f43-b769-ff46fbcc2ac1" src="https://github.com/user-attachments/assets/f0f563ad-e4a7-4727-81da-707a8217289d" />


Customers acquisition seems to be consistent

(iii) MRR shows strong growth from 2024 to early 2025.

<img width="1230" height="323" alt="b0425fa8-f77b-4813-938a-a2a822d64616" src="https://github.com/user-attachments/assets/bdd0f8f2-4b72-4b39-8387-a98823dea06d" />

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

<img width="583" height="302" alt="471400f2-ee7a-4cb8-9480-e5ca4b272fd6" src="https://github.com/user-attachments/assets/15f902f1-1951-4183-be1b-6159ebf7fb46" />


This shows that  most customers that churn may initially see value but fail to continue usage overtime


(iii) Across all plans, revenue has been recovered before customer churn.
 That is customers tenure is long enough to recover their acquisition cost.
 
<img width="827" height="354" alt="b6dae730-6922-418e-828f-e2cd657af7ef" src="https://github.com/user-attachments/assets/623a47c9-84ba-4a6c-9d6a-d3ba6deaf785" />


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


