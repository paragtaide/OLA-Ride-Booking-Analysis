# 🚕 OLA Cab Bookings Analysis Dashboard

## 📌 Project Overview
This project performs an end-to-end analysis of OLA's cab booking data, covering over $1 Million in booking value and 8,500+ items. I utilized **MySQL** for data standardization and validation, and **Power BI** to build an interactive dashboard tracking ride volume, cancellations, and revenue metrics. This dashboard allows stakeholders to make data-driven decisions regarding fleet optimization and customer service.

## 🖼️ Dashboard Preview
![OLA Dashboard Summary](005%20OLA_Dashboard_Summary.png)

## 🎯 Business KPIs & Requirements
Following the requirements documented in `OLA_Project_Requirements.docx`, the dashboard focuses on the following key metrics:
* **Total Booking Value:** Aggregated revenue ($1.20M).
* **Booking Volume:** Total count of ride requests (8,523).
* **Cancellation Insights:** Standardized reasons for both customer and driver cancellations.
* **Success Rate:** Percentage of total bookings completed (3.9 Avg Rating).

## 🚀 Key Business Insights
* **Revenue Leader:** Prime Sedan consistently generates the highest revenue (~$776K), proving it is the core business segment.
* **Peak Demand:** 13% of all cancellations are due to "Driver Unreachable," indicating communication or network gaps that need to be addressed.
* **Operational Performance:** Tier 3 locations contributed the highest revenue share, highlighting strong performance in smaller cities.

## 🛠️ Technical Stack
* **Database:** MySQL (Local Environment)
* **Connectivity:** Live connection via ODBC Connector / System DSN
* **ETL & Transformation:** Power Query (M Language) for data type casting and null handling.
* **Analytics:** DAX (Custom measures, time intelligence)
* **Visualization:** Power BI Desktop

## ⚙️ Data Pipeline Workflow
1. **Requirement Analysis:** Defined project scope and metrics based on `OLA_Project_Requirements.docx`.
2. **SQL Engineering:** Standardized vehicle type labels and cancellation reasons using `OLA_Data_Validation.sql`.
3. **Modeling:** Implemented a clean Star Schema in Power BI.
4. **Validation:** Cross-referenced all Power BI measures against SQL outputs to ensure 100% data accuracy.

---
**Developed by:** Parag Taide  
**Connect on LinkedIn:** https://www.linkedin.com/in/paragtaide/
