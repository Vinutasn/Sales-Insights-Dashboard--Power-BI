# 📊 Sales Insights Dashboard – Power BI Project

### 📌 Project Overview
This project focuses on building a centralized sales insights dashboard using Power BI to help stakeholders track revenue, sales quantity, and market performance across regions in India.
The goal is to replace manual Excel-based reporting with a data-driven, automated, and interactive solution.

### 🏢 Business Problem Statement
AtliQ Hardware operates across multiple regional offices in India but struggles to track sales performance effectively due to:
- Dependency on verbal updates from regional managers
- Multiple Excel files with inconsistent and biased data
- Lack of consolidated visibility into revenue and market trends

### Objective:
Build a single source of truth using Power BI to enable accurate, real-time, and actionable sales insights for better decision-making.

### 🛠 Tools & Technologies Used

- **Power BI:** Data modeling, DAX measures, and dashboard visualization
- **MySQ:L** Data extraction and analysis using SQL queries
- **Power Query:** Data cleaning, transformation, and ETL
- **SQL:** Business queries to validate and derive insights

### 🔄 Data Cleaning & Transformation (Power Query)
The following steps were performed to ensure data accuracy and consistency:
- **Market Filtering**
Removed non-India markets (New York, Paris) as the business operates only in India
Excluded blank zones from the Market table

- **Transaction Data Validation**
Removed invalid sales values (`0` and `-1`)
Identified inconsistent currency values (`INR`, `INR\r`, `USD`, `USD\r`)

- **Currency Standardization**
Converted all USD values to INR
Conversion rate used: 1 USD = 75 INR
Created a new column `norm_sales_amount` for standardized revenue

- **Duplicate & Incorrect Records Handling**
Retained `INR\r` and `USD\r` values
Removed less frequent and duplicate currency records

- **Data Type Fix**
Converted `norm_sales_amount` from text to decimal to enable correct revenue calculations

### 🗄️ Data Modeling
- Created a **star schema** with fact and dimension tables
- Established proper relationships between:
  - Transactions
  - Customers
  - Products
  - Markets
  - Date table
 
### 📐 Measures & KPIs (DAX)

A separate **BaseMeasures** table was created for clarity and best practice.

Key Measures:
- Total Revenue
- Total Sales Quantity
- Revenue by Market
- Sales Quantity by Market

### 📊 Dashboard Features

The final Power BI dashboard includes:
**💰 Total Revenue & Sales Quantity KPIs**
**🏙 Revenue by Market (City-wise)**
**📦 Sales Quantity by Market**
**📈 Revenue Trend Over Time**
**👥 Top 5 Customers**
**🛒 Top 5 Products**
**🌍 Revenue by Zones (North, Central, South)**
**🎯 Interactive slicers (Year, Month, Customer)**

Special setting applied to hide markets with **zero revenue** for better readability.

### 🧠 SQL Analysis

SQL queries were used to:
- Explore customers and transactions
- Analyze revenue by year, month, and market
- Validate currency inconsistencies

### 🚀 Key Learnings
- End-to-end BI project execution
- Real-world data cleaning challenges
- Currency normalization logic
- Power BI data modeling best practices
- Writing business-focused SQL queries
- Building executive-friendly dashboards

### 📎 Project Deliverables

✅ Power BI Dashboard
✅ Data Cleaning & Transformation Steps
✅ SQL Queries for Insights

### 📬 Contact

Vinuta Nadiger
📧 vinuta.nadiger1@gmail.com | https://www.linkedin.com/in/vinutasnadiger/
💼 Data Analyst | Power BI | SQL | Excel
