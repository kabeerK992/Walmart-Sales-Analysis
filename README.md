# Walmart Sales Analysis

**Business Problem:** Across 100 store branches and 6 product categories, which areas are driving revenue — and where are the strategic decisions that are costing the business growth?

This project analyzes 9,969 transactions across 5 years (2019–2023) using Python for data cleaning and exploration, SQL for querying, and Power BI for interactive dashboard reporting.

---

## Project Summary

| Metric | Value |
|---|---|
| Total Revenue Analyzed | $1,209,726 |
| Total Transactions | 9,969 |
| Branches Analyzed | 100 |
| Categories | 6 |
| Date Range | Jan 2019 – Dec 2023 |
| Avg Customer Rating | 5.83 / 10 |

---

## Key Business Insights & Recommendations

### 1. ⚠️ The 3 Highest-Rated Categories Were Discontinued After 2019 — And Revenue Never Recovered
After 2019, three categories completely disappeared from sales data: **Food & Beverages** (rated 7.1/10), **Health & Beauty** (rated 7.0/10), and **Sports & Travel** (rated 6.9/10). The 3 categories that remained — Fashion Accessories, Home & Lifestyle, and Electronics — are the **3 lowest-rated** in the entire dataset (avg 5.8/10).

The financial impact is clear: annual revenue dropped from **$307,587 in 2019** to an average of **$225,535 from 2020–2023** — a decline of ~$82,000 per year that persisted for 4 consecutive years with no recovery.

**Recommendation:** Reinstate the top-rated categories, starting with Food & Beverages in a pilot across the top 10 branches. Customer satisfaction data from 2019 confirms demand existed. Discontinuing the highest-rated products while retaining the lowest-rated ones is a strategic misalignment the data makes impossible to ignore.

---

### 2. Fashion & Home Lifestyle Carry the Entire Business — Dangerously So
Fashion Accessories ($489,481) and Home & Lifestyle ($489,250) together account for **80.9% of total revenue** across 2020–2023. The business is almost entirely dependent on just 2 product lines.

**Recommendation:** This is a concentration risk. Any demand shift, supply disruption, or competitive pressure in either category would severely impact total revenue. Category diversification — especially reinstating proven categories from 2019 — is a strategic necessity, not just a growth opportunity.

---

### 3. Afternoon Shift Dominates — Morning Is a Missed Opportunity
Afternoon (12–6pm) drives **46.5% of all transactions** and **47.8% of total revenue**. Morning (6–12pm) accounts for only 20.9% of transactions despite being a full 6-hour window.

**Recommendation:** Concentrate staffing and promotional activity in the afternoon peak. For mornings, introduce a time-limited discount or loyalty offer to shift buying behavior — there is clear headroom to grow morning revenue without cannibalizing peak hours.

---

### 4. Credit Card Dominance Is a Hidden Margin Leak
Credit card payments account for **42.7% of all transactions**, followed by Ewallet (38.9%) and Cash (18.4%). Nearly half of all revenue is subject to merchant processing fees.

**Recommendation:** Introduce an Ewallet incentive — a 1–2% discount or bonus loyalty points — to shift volume toward lower-cost digital payments. Even a 10% shift from credit card to Ewallet would meaningfully improve net margins at this transaction volume.

---

### 5. Customer Ratings and Product Availability Are Completely Inverted
The 3 highest-rated categories (Food & Beverages 7.1, Health & Beauty 7.0, Sports & Travel 6.9) generated $0 revenue from 2020–2023. The lowest-rated categories generate all the revenue. Customer preference and product availability are moving in opposite directions.

**Recommendation:** Customer ratings are a leading indicator of demand. Reintroducing even one discontinued category on a pilot basis would test whether 2019 demand patterns still hold. The data strongly suggests they will.

---

## Tools & Technologies

| Tool | Purpose |
|---|---|
| Python (Pandas, Matplotlib) | Data cleaning, EDA, trend analysis |
| SQL | Querying and aggregation across branches and categories |
| Power BI (DAX, Power Query) | Interactive dashboard with drill-through filters |

---

## Repository Structure

---

## How to Open

1. Download `IBM_Marketing___Risk_Analysis_Dashboard.pbix`
2. Open in Power BI Desktop (free download from Microsoft)
3. If data doesn't load: Transform Data → Data Source Settings → update path to your local CSV

---

## Author

**Kabeer Khan** — Data Analyst
📧 kabeerk992@gmail.com
🔗 [LinkedIn](https://www.linkedin.com/in/kabeer-khan-analyst) | [GitHub](https://github.com/kabeerK992/ibm-marketing-risk-dashboard)
