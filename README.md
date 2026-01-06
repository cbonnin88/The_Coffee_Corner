# ☕ The Coffee Corner: Growth & Retention Analysis.
A full-stack product analytics project analyzing sales trends, customer retention, and product profitability for a D2C coffee brand. This repository demonstrates an end-to-end data workflow: from SQL extraction and Python-based Machine Learning to interactive dashboards in Looker Studio and Streamlit.

# 🚀 Project Overview
**Objective:** Transform raw transaction data into actionable business intelligence to drive growth and improve customer retention.

## Key Components:
- **Data Extraction & Cleaning:** Complex SQL queries in BigQuery to sanitize currency data and join relational tables.
- **Exploratory Data Analysis (EDA):** Python (Pandas/Plotly) analysis of sales trends and product performance.
- **Machine Learning:** Customer Segmentation using **RFM Analysis (Recency, Frequency, Monetary)** and **K-Means Clustering** to identify "At Risk" vs. "Loyal" customers.
- **BI Dashboard**:
  1. **Looker Studio:** A self-serve executive dashboard for KPI monitoring.
 

## 🛠️ Tech Stack
- **Cloud & Database:** Google Cloud Platform (GCP), BigQuery
- **Python:** Pandas, Numpy, Scikit-Learn (K-Means), Plotly Express
- **BI Tools:** Looker Studio
- **Environment:** Google Colab


# 📊 Key Insights & Features
1. **Sales Performance:** Identified top-selling coffee types (Arabica vs. Robusta) and high-value regions (UK vs. France).
2. **Profitability Analysis:** Calculated profit margins per product, revealing that high-revenue items were not always the most profitable.
3. **Customer Segments:**
    - **VIPs:** High frequency, recent purchases
    - **Churn Risks:** High past spend, but no recent activity (targeted for re-engagement)

# Dashboard Previews
### [Coffee Corner Sales Dashboard](https://lookerstudio.google.com/reporting/b9c1f35d-6d66-466f-83ae-ac48aa6ef287)

**Weekly Sales (2019-2022)**
<img width="1724" height="525" alt="Weekly Sales Trends" src="https://github.com/user-attachments/assets/469d1255-4309-4b0a-9dcb-7ad8378c63ee" />

**Total Profit by Country**
<img width="1401" height="525" alt="Total Profit by Country" src="https://github.com/user-attachments/assets/b61a08db-9e92-471b-8aa4-9bbcfabbf8f9" />

**Correlation Between Unit Price and Quantity**
<img width="1724" height="525" alt="correlation price vs quantity" src="https://github.com/user-attachments/assets/d8be5636-cb57-452d-8203-5044b1dd7470" />





