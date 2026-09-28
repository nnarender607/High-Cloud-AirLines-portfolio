# High-Cloud-AirLines-portfolio

## ✈️ Project Overview
This project presents a comprehensive end-to-end data analysis of **High Clouds Airline**, processing a large-scale dataset consisting of over **1 million+ rows (10L+)**. The objective was to extract actionable business insights regarding passenger volume, flight operations, seat capacities, carrier performance, and route profitability using a multi-tool analytics stack (**SQL, Excel, Power BI, and Tableau**).

---

## 📊 Key Dashboard Metrics & Visualizations (Tableau Preview)
Based on the dashboard snapshot, the analysis highlights the following key performance indicators (KPIs) and operational breakdowns:
* **Total Passengers:** 187.02M
* **Total Available Seats:** 243.53M
* **Overall Load Factor %:** 76.80%
* **Total Flights:** 2.80M

### Core Visualizations Included:
1. **Load Factor by Month:** Tracking seasonal trends and performance across the year.
2. **Carrier Performance:** Comparing passenger volumes and load factors across major airlines (e.g., Southwest Airlines, Delta Air Lines, US Airways, Continental Air, etc.).
3. **Top Routes:** Identifying the busiest flight corridors by flight counts (e.g., Atlanta, GA ➔ Boston, MA; Washington, DC ➔ New York, NY).
4. **Distance Group Level:** Analyzing flight distribution across distance brackets (ranging from 0-500 km up to 2500+ km).
5. **Weekday vs. Weekend Analysis:** Comparing operational load factors between weekdays (76.73%) and weekends (76.96%).

---

## 🛠️ Tech Stack & Methodology

* **SQL:** Used for data extraction, joining large tables, handling missing values, data cleaning, and writing complex aggregation queries to process the 1M+ records efficiently.
* **Microsoft Excel:** Utilized for initial exploratory data analysis (EDA), data wrangling, pivot tables, and building an interactive baseline spreadsheet dashboard.
* **Tableau:** Built the primary interactive executive dashboard showcasing global KPIs, filters by geography (Country, State, City), carrier metrics, route analysis, and temporal trends.
* **Power BI:** Created a parallel business intelligence report utilizing DAX measures and data modeling to deliver deep-dive analytical slicing.

---

## 🚀 Key Business Insights
* **Capacity Optimization:** While overall seat capacity stands strong at ~243.5M, maintaining a ~76.8% load factor highlights opportunities to optimize underperforming routes.
* **Top Traffic Corridors:** High-density routes between major metropolitan hubs drive the vast majority of flight frequencies.
* **Carrier Dominance:** A few major carriers capture the largest share of passenger volumes, indicating heavy market concentration.
* **Temporal Stability:** Passenger demand and load factors remain relatively consistent between weekdays and weekends, showing steady operational flow.

---

## 📂 Repository Structure
```text
├── Data/                 # Raw and cleaned datasets (Excel / CSV)
├── SQL_Queries/          # SQL scripts used for data extraction and transformation
├── Excel_Dashboard/      # Excel workbook containing pivot tables and summary models
├── Tableau_Workbook/     # Tableau packaged workbook (.twbx)
├── PowerBI_Report/       # Power BI desktop report (.pbix)
└── README.md             # Project documentation
