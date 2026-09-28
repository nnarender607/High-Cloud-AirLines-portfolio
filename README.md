# High Clouds Airline Analytics Project

## ✈️ Project Overview
This repository contains a comprehensive end-to-end data analytics solution for **High Clouds Airline**. Processing a massive, large-scale dataset exceeding **1 million+ records (10L+)**, this project extracts powerful business insights across passenger demand, flight volume, seat capacity, carrier performance, and route profitability. 

The analysis is executed using a multi-tool professional stack: **SQL** for backend data extraction and management, **Microsoft Excel** for exploratory analysis and baseline reporting, **Tableau** for interactive visualization, and **Power BI** for a robust, multi-page business intelligence report.

---

## 📊 Key Global Metrics (KPIs)
Across the analytical models, the dataset tracks core operational metrics:
* **Total Flights:** ~3M[cite: 2]
* **Total Passengers:** 187M[cite: 2]
* **Available Seats:** 244M[cite: 2]
* **Total Distance:** 82M[cite: 2]
* **Overall Load Factor %:** ~77%[cite: 2]

---

## 🖥️ Power BI Multi-Page Report Structure
The Power BI report (`HightCloud Dashboard_PowerBI.pbix`) is structured into distinct, dedicated analytical views:

1. **Flight Dashboard:**
   * **KPI Cards:** Total Flights (3M), Total Passengers (187M), Available Seats (244M), Total Distance (82M), and Load Factor (77%)[cite: 2].
   * **Filters & Slicers:** Year (2008–2010), Quarter, Month Name, and Carrier Name[cite: 2].
   * **Visualizations:** Top 10 Airlines by Flights, Top 5 Airlines Share (Donut Chart), Total Flights by Year trend line, and Flight distribution by Month[cite: 2].

2. **Passenger & Load Factor Dashboard:**
   * **Operational Focus:** Deep-dives into passenger distributions and seat utilization efficiency[cite: 3].
   * **Visualizations:** Top 10 Carriers by Passenger count, Load Factor trends by Year and Month, Weekday vs. Weekend Load Factor comparisons, and Carrier-specific load factor breakdowns[cite: 3].

3. **Route & Distance Dashboard:**
   * **Geographic & Spatial Analytics:** Features granular location filters including Origin/Destination Country, State, and City[cite: 4].
   * **Visualizations:** Top 10 Routes by Flights, Distance Group distributions, and itemized Origin-to-Destination flight logs[cite: 4].

---

## 📈 Tableau Dashboard Features
* **Interactive Executive Summary:** Global KPI tiles tracking passages, available seats, load factors, and flight counts.
* **Temporal & Behavioral Trends:** Month-by-month load factor tracking and weekday versus weekend operational metrics[cite: 1].
* **Carrier & Route Breakdowns:** Detailed comparisons of major airline contributions and high-density route corridors[cite: 1].

---

## 🛠️ Tech Stack & Methodology
* **SQL:** Backend data wrangling, cleaning, and complex aggregation of 1M+ rows.
* **Microsoft Excel:** Initial data exploration, modeling, and pivot table dashboards.
* **Tableau:** Visual storytelling via interactive dashboards (`.twbx`)[cite: 1].
* **Power BI:** Advanced multi-page business intelligence modeling, DAX calculations, and cross-filtering (`.pbix`).

---

## 📂 Repository Structure
```text
├── Data/                 # Cleaned and processed dataset files (Excel / CSV)
├── SQL_Queries/          # SQL scripts used for data extraction and transformation
├── Excel_Dashboard/      # Excel workbook containing pivot summaries and models
├── Tableau_Workbook/     # Tableau interactive workbook (.twbx)
├── PowerBI_Report/       # Power BI multi-page report (.pbix)
└── README.md             # Project documentation
