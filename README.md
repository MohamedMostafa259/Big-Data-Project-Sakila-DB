# Big Data Project: Sakila Data Warehouse & Analytics Dashboard

This project is part of my Big Data Engineering coursework. It involves transforming the classic Sakila Movie Rental Database into a star-schema-based Data Warehouse, building an OLAP cube, and developing analytical reports using Microsoft BI tools.

## Objective

This project aims to apply the concepts of data warehousing and OLAP analysis on a real-world-style movie rental dataset using the Microsoft BI Stack.

## Project Highlights

### 1. Data Modeling
- Designed a **Star Schema** based on Sakila DB
- Created fact and dimension tables:
  - Fact Table: `Fact_Payment`
  - Dimensions: `Dim_Date`, `Dim_Customer`, `Dim_Staff`, `Dim_Store`, `Dim_Film`

![Star Schema](https://github.com/MohamedMostafa259/Big-Data-Project-Salika-DB/blob/main/Star%20Schema%20VS.png)

<br>

### 2. ETL Process
- Used **SQL Server Integration Services (SSIS)** for data extraction and transformation
- Populated the data warehouse schema using T-SQL and SSIS packages

### 3. OLAP Cube Design
- Built and deployed an **SSAS Multidimensional Cube**
- Defined KPIs and measures like:
  - `[Measures].[Payment Amount]`
  - `[Measures].[Late Fee]`
  - `[Measures].[Rental Duration]`

### 4. Power BI Dashboard
- Connected Power BI to the deployed cube
- Developed an interactive report that includes:
  - Monthly Sales Trend
  - Top 10 Film Categories by Revenue
  - Top 10 Films by Revenue
  - Top 10 Customers by Spending
  - KPI cards for Total Revenue and Units Rented
  - Film Category Slicer for dynamic filtering

> See `dashboard.pbix` and `Reports/Power BI Report.pdf` file for full visuals.

---

## Tools & Technologies

- Microsoft SQL Server (Sakila DB + DW)
- SQL Server Integration Services (SSIS)
- SQL Server Analysis Services (SSAS)
- Power BI
- T-SQL, MDX
