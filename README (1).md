# 🛒 Walmart Sales Analysis

An end-to-end data analysis project covering data cleaning, SQL-based business insights, and an interactive Power BI dashboard — built on a real-world Walmart retail dataset.

---

## 📌 Project Overview

This project analyzes Walmart's retail sales data across multiple branches, categories, and payment methods. The goal is to extract meaningful business insights using a full analyst workflow:

**Python → SQL → Power BI**

---

## 🗂️ Project Structure

```
Walmart-Sales-Analysis/
│
├── Walmart.csv                  # Raw dataset (10,051 records)
├── clean_walmart.csv            # Cleaned dataset (9,969 records)
├── Walmart_project.ipynb        # Python data cleaning notebook
├── SQL_Walmart.sql              # SQL business queries (PostgreSQL)
├── Walmart_Dashboard.pbix       # Power BI dashboard file
├── dashboard_screenshot.png     # Dashboard preview
└── README.md
```

---

## 🔧 Tools & Technologies

| Tool | Purpose |
|------|---------|
| Python (Pandas) | Data cleaning & transformation |
| PostgreSQL (pgAdmin) | Business analysis queries |
| Power BI | Interactive dashboard |

---

## 📊 Dataset Info

| Field | Detail |
|-------|--------|
| Raw Records | 10,051 |
| Cleaned Records | 9,969 |
| Columns | invoice_id, branch, city, category, unit_price, quantity, date, time, payment_method, rating, profit_margin, total_price |
| Date Range | 2019 – 2023 |

---

## 🐍 Step 1 — Data Cleaning (Python)

Notebook: `Walmart_project.ipynb`

- Removed 82 duplicate records
- Dropped null values
- Removed `$` symbol from `unit_price` and converted to float
- Calculated new column: `Total_Price = unit_price × quantity`
- Exported cleaned data to `clean_walmart.csv`
- Loaded cleaned data directly into PostgreSQL using SQLAlchemy

---

## 🗄️ Step 2 — Business Analysis (SQL / PostgreSQL)

File: `SQL_Walmart.sql`

10 business questions answered:

| # | Question |
|---|----------|
| Q1 | Different payment methods and number of transactions |
| Q2 | Highest-rated category in each branch |
| Q3 | Busiest day for each branch based on transactions |
| Q4 | Total quantity sold per payment method |
| Q5 | Avg, min, max rating per category per city |
| Q6 | Total profit per category (unit_price × quantity × profit_margin) |
| Q7 | Most common payment method per branch |
| Q8 | Sales categorized by shift — Morning, Afternoon, Evening |
| Q9 | Top 5 branches with highest revenue decline (2022 vs 2023) |
| Q10 | Total revenue and transactions by year |

---

## 📈 Step 3 — Dashboard (Power BI)

File: `Walmart_Dashboard.pbix`

**Key Visuals:**
- KPI Cards — Total Revenue ($1.2M), Total Profit ($476.1K), Total Transactions (9,969), Avg Rating (5.83/10)
- Total Revenue & Profit by Category (Clustered Bar Chart)
- Revenue by Payment Method (Donut Chart)
- Average Rating by Category (Bar Chart)
- Revenue Trend by Year (Line Chart)
- Most Billing by Shift — Morning / Afternoon / Evening
- Top 5 Branches by Revenue (Horizontal Bar Chart)

**Filters:** Branch, Category, Year, Payment Method

![Dashboard Preview](dashboard_screenshot.png)

---

## 💡 Key Insights

- **Credit card** is the most used payment method (42.69% of revenue)
- **Afternoon shift** has the highest number of invoices (4,636 — 46.5%)
- **Fashion accessories** generates the highest revenue by category
- **Food and beverages** has the highest average customer rating (7.1/10)
- Revenue peaked in **2019 ($308K)** and has since declined year-over-year

---

## ▶️ How to Run

**Python Notebook:**
```bash
pip install pandas sqlalchemy psycopg2
# Open Walmart_project.ipynb in Jupyter
# Update DB credentials in the SQLAlchemy connection cell before running
```

**SQL:**
```
- Open pgAdmin and connect to your PostgreSQL server
- Create a database named walmart_db
- Run SQL_Walmart.sql
```

**Power BI:**
```
- Open Walmart_Dashboard.pbix in Power BI Desktop
- Refresh data source if needed
```

---

## 👤 Author

**Kabeer Khan**  
Aspiring Data Analyst | Python • SQL • Power BI • Excel  
LinkedIn Profile _ ttps://www.linkedin.com/in/kabeer-khan-63b7b4207?utm_source=share_via&utm_content=profile&utm_medium=member_ios

---
