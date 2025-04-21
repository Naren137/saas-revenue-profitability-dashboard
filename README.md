# 📊 SaaS Revenue & Profitability Dashboard

## 📌 Project Summary

This is a full-funnel analytics case study focused on helping a SaaS business understand its **revenue**, **profitability**, **customer value**, and **product performance** over time. The dashboard simulates what a data analyst would deliver in a real-world role — covering **data cleaning (Excel)**, **data modeling (SQL)**, and **insight generation (Power BI & DAX)**.

---

## 🎯 Business Objective

The company is facing inconsistent profitability despite revenue growth. Leadership wants to know:

- Which **customer segments and industries** bring sustainable value
- Which **products and bundles** are driving or draining profit
- Whether **discounting** is affecting profitability
- What trends are emerging in **sales and margin** over time
- How to build **data-backed pricing and retention strategies**

---

## 📁 Dataset Overview

The dataset contains 10,000+ rows of SaaS sales transactions, each including:

- `Order Date`, `Region`, `Customer`, `Customer Segment`, `Industry`
- `Product`, `Sales`, `Profit`, `Discount`, `Quantity`
- Each row represents a product purchased in a specific order

---

## 🔧 Tools & Tech Stack

| Tool      | Purpose                                      |
|-----------|----------------------------------------------|
| **Excel** | Data cleaning, null handling, type checking  |
| **SQL**   | Data modeling, aggregation, product pairing  |
| **Power BI** | Dashboard creation, interactivity        |
| **DAX**   | KPI calculation, time intelligence, tiering  |

---

## 🧱 My Workflow

### 1. 🧹 Excel (Initial Data Cleaning)
- Replaced null or invalid values (e.g. blanks in numeric columns)
- Fixed column data types (dates, numbers, categories)
- Ensured consistency in Region and Product names
- Removed duplicates, trailing spaces

---

### 2. 🛠 SQL (Data Modeling)

**SQL Views Created:**
- `customer_sales_analysis` — Revenue & profit per customer/segment/industry
- `product_sales_analysis` — Sales, profit, discount, quantity by product
- `product_pairing_view` — Used self-join logic to create a product bundle matrix
- `date_region_bridge` — Bridge key for consistent joining in Power BI

**SQL Metrics Calculated:**
- Total orders, revenue, profit
- Avg order value, profit per order
- Quantity sold
- Most profitable product pairings

✅ These views formed the **foundation layer** for Power BI visuals.

---

### 3. 📊 Power BI & DAX (Dashboard & KPI Logic)

**DAX Measures Created:**
- `Profit Margin %`  
- `Moving Avg Revenue`  
- `Moving Avg Profit Margin`
- `Customer Revenue Tier` (High, Upper-Mid, Mid, Low)

**Visuals Designed:**
- Revenue & Profit by Segment & Industry
- Product Sales by Customer Tier
- Top Product Pairings by Profitability
- Revenue/Profit Trends over Time
- KPI Cards: Revenue, Profit, Avg Discount, Margin %

✅ DAX enabled real-time dynamic filtering and business-driven categorization.

---

## 📊 Business Insights & Recommendations

### 📌 1. Segment & Industry Performance

**Insight**:  
- SMB customers generate the most revenue  
- Enterprise clients yield the **highest profit margin**

**Recommendation**:  
- Continue high-volume acquisition in SMB  
- Focus retention, upselling, and premium support on **Enterprise** clients for sustainable profit

---

### 📌 2. Customer Tier Breakdown

**Insight**:  
- **High-tier customers** (≥ $40K spend) favor fewer, high-value products  
- **Low-tier customers** drive volume but lower profit

**Recommendation**:  
- Design tier-specific loyalty programs  
- Personalize pricing or packages for High-Tier clients  
- Consider nudging Mid/Upper-Mid tiers to premium via targeted upgrades

---

### 📌 3. Product Profitability

**Insight**:  
- Products like **FinanceHub** and **Site Analytics** are top sellers  
- **ContactMatcher** has better profit-to-sales ratio

**Recommendation**:  
- Keep selling FinanceHub but reduce discounts if possible  
- Promote ContactMatcher as a value driver  
- Consider bundling high-profit products with high-volume, low-margin ones

---

### 📌 4. Product Pairing Opportunities

**Insight**:  
- SQL analysis showed **Alchemy + Data Smasher** as the highest-profit pair  
- Some frequent pairs had low combined profit

**Recommendation**:  
- Use high-profit pairs as bundles in marketing campaigns  
- Avoid bundling frequent but low-profit combinations

---

### 📌 5. Discounting Impact

**Insight**:  
- Average discount is low (0.15%) — overall healthy  
- But some products with higher discounts are contributing less to net profit

**Recommendation**:  
- Introduce **margin-protected discount rules**  
- Use discounts strategically only on products with high upsell potential

---

### 📌 6. Time-Based Trends

**Insight**:  
- Revenue and margin peaked in Q1/Q2 2022  
- Noticeable dip in **Q3 and Q4 of 2023**

**Recommendation**:  
- Investigate customer churn or price shifts during late 2023  
- Launch reactivation campaigns in Q2 to preempt future dips

---

## 📁 Project Structure

```bash
📦 saas-revenue-profitability-dashboard
├── /screenshots               # Dashboard screenshots
├── /sql                       # SQL queries for views and metrics
├── /dax                       # DAX measures and calculated columns
├── /pbix                      # Power BI dashboard file
└── README.md                  # This documentation
