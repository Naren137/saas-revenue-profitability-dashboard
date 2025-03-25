# saas-revenue-profitability-dashboard
A complete end-to-end business intelligence case study analyzing revenue, profitability, and customer value for a SaaS company. This project uses SQL for data modeling, Power BI for visualization, and DAX for dynamic business logic — focused on uncovering insights that drive smarter product, pricing, and retention strategies.
# 📊 SaaS Revenue & Profitability Dashboard

[Dashboard Preview](C:\Users\naren\OneDrive\Pictures\Screenshots\Screenshot 2025-03-25 133717.png)


## 🔍 Overview  
This project simulates a real-world analytics challenge for a SaaS company. It demonstrates how to use the **full data stack** — from raw data transformation in SQL to interactive BI reporting in Power BI with DAX — to uncover insights that drive smarter business decisions.

---

## 💼 Business Problem  
The company has growing revenue but inconsistent profitability. Leadership needs to understand:
- Which **customer segments and industries** are most valuable  
- Which **products and bundles** drive or dilute profit  
- Whether **discounting** is hurting margins  
- How performance has changed over time

---

## 📁 Dataset  
Raw transactional data with over 10,000 records. Key fields include:
- `Date`, `Region`, `Customer`, `Segment`, `Industry`  
- `Product`, `Sales`, `Profit`, `Discount`, `Quantity`

---

## 🧱 My Approach

### 1. SQL (PostgreSQL)
- Created views for customer-level and product-level analysis  
- Built a product pairing view using **self-joins** for market basket logic  
- Introduced `date-region` bridge keys to cleanly join tables

### 2. Power BI
- Developed interactive dashboards with slicers and filters  
- Created visuals for customer tier impact, product profit, time-based trends

### 3. DAX
- Defined dynamic customer tiers based on total revenue  
- Built **moving averages** for revenue and profit margin  
- Created profit margin % and average profit per product pair measures

---

## 📊 Metrics & Dimensions

**Metrics Tracked**:
- Total Revenue  
- Total Profit  
- Profit Margin %  
- Average Discount %  
- Average Profit per Product Pair  
- Moving Average Revenue & Margin

**Dimensions Used**:
- Customer Tier (Low, Mid, Upper-Mid, High)  
- Customer Segment (SMB, Strategic, Enterprise)  
- Industry, Product, Region  
- Time (Quarter, Year)

---

## 🔍 Key Insights & Business Recommendations

- **SMBs generate revenue, but Enterprises offer higher margins**  
  → Focus on retention and premium upsells for Enterprise clients

- **Not all popular products are profitable**  
  → Use high-margin products like *Alchemy* in strategic bundles

- **Top product pairing: Alchemy + Data Smasher**  
  → Strong candidate for cross-sell campaigns

- **High-tier customers prefer fewer, premium tools**  
  → Personalize pricing and retention efforts

- **Q3/Q4 2023 decline in revenue + margin**  
  → Investigate churn or seasonal patterns and act proactively

---

## 🛠 Tools Used

- **SQL (PostgreSQL)** – Data modeling, aggregation, product pairing logic  
- **Power BI** – Dashboard design, slicers, KPI tracking  
- **DAX** – Calculated measures, moving averages, tiering logic  
- **Excel** – Data exploration and preprocessing

---

## ✅ Outcome

A business-ready dashboard that answers strategic questions about revenue, profit drivers, and customer value — while demonstrating a complete end-to-end analytics workflow.
