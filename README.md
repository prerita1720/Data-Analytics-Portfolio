# 🛫 Route Profitability Dashboard — Power BI Report

An interactive Power BI dashboard analysing airline route profitability — covering revenue, cost, profit, and occupancy across routes, aircraft types, and time, presented through an executive summary and detailed route-level views.

## 📌 Project Overview

| Property | Details |
|---|---|
| **Tool** | Microsoft Power BI Desktop |
| **File** | `RouteProfitDashboard.pbix` |
| **Scope** | Report building & data visualization — airline route profitability analytics |
| **Core Table** | `AirlineRoutesData` |
| **Measure Table** | `measures (2)` |
| **Report Pages** | 4 — Home Page, Route Profitability Dashboard, Executive Summary, SkyRoutes Profitability |

---

## 📂 Data Model

| Table | Type | Key Fields |
|---|---|---|
| AirlineRoutesData | Data Table | RouteCode, Origin, RouteType, AircraftType, FlightMonth, Revenue, OperationalCost, Profit, RevenuePerMinute |
| measures (2) | Dedicated Measure Table | Total Revenue, Total Profit, Avg Revenue, Avg Cost, Avg Profit, Occupancy %, Total Flights |

- All DAX measures were kept in a separate **measures (2)** table, keeping the model clean and measures organized away from the raw route data
- Fields cover **route-level detail** (route code, origin, route type, aircraft type), **financials** (revenue, operational cost, profit, revenue per minute), and a **time attribute** (FlightMonth) to support monthly trend analysis

---

## 📐 Key Measures

| Measure | Purpose |
|---|---|
| Total Revenue | Sum of revenue across all routes/flights |
| Total Profit | Sum of profit across all routes/flights |
| Avg Revenue | Average revenue per route/flight |
| Avg Cost | Average operational cost per route/flight |
| Avg Profit | Average profit per route/flight |
| Occupancy % | Percentage measure of seat/flight occupancy |
| Total Flights | Total count of flights in the dataset |

---

## 📊 Report Pages

| Page | Purpose |
|---|---|
| **Home Page** | Landing/cover page with branding imagery, shapes, and an action button for navigation |
| **Route Profitability Dashboard** | Route-level exploration — clustered bar chart, geographic map, column chart, and a gauge visual, filtered by three slicers |
| **Executive Summary** | High-level KPI overview — Total Revenue, Total Profit, and Occupancy cards, alongside a bar chart, a detail table, a 100% stacked column chart, and a donut chart |
| **SkyRoutes Profitability** | Trend-focused view — line chart and area chart for profitability over time, a detail table, and KPI cards (e.g. Sum of Revenue) |

---

## 🖱️ Interactivity

- **Slicers** on the Route Profitability Dashboard page to filter by route, aircraft type, and other dimensions
- **Action buttons** used for page navigation from the Home page and across report pages
- Consistent KPI cards repeated across pages (Total Revenue, Total Profit, Occupancy) to keep key metrics visible at every level of analysis

---

## 🎨 Design & Formatting

- Consistent color palette (deep purple `#702254` KPI cards, warm orange `#eb895f` accents) applied across visuals for a cohesive brand look
- Custom titles applied to KPI cards (e.g. *TOTAL REVENUE*, *TOTAL PROFIT*, *OCCUPANCY*, *SUM OF REVENUE*) for clarity at a glance
- Background images and shapes used on the Home and Executive Summary pages to reinforce visual branding

---

## 🚧 Challenges & Solutions

| Challenge | Solution |
|---|---|
| Summarizing profitability at a glance for stakeholders | Built a dedicated Executive Summary page with headline KPI cards and supporting charts |
| Visualizing route-level geography | Used a Map visual on the Route Profitability Dashboard page to show route/origin performance spatially |
| Showing performance thresholds (e.g. occupancy targets) | Used a Gauge visual to represent Occupancy % against a target |
| Comparing profitability trends over time | Used Line and Area charts on the SkyRoutes Profitability page to track revenue and profit by month |
| Keeping DAX organized as the report grew | Maintained all measures in a separate measures (2) table |
| Making the report easy to navigate | Added action buttons on the Home page and other pages for direct navigation between views |

---

## 💡 What I Learned

- How to design a multi-page Power BI report that moves from a high-level **Executive Summary** down to route-level detail
- Practical use of a **Gauge visual** to represent performance against a target (Occupancy %)
- Using **Map visuals** to add a geographic dimension to route profitability analysis
- Building trend visuals (**line** and **area charts**) to track revenue and profit over time
- The value of keeping **measures in a dedicated table**, separate from raw data fields, for a cleaner model
- Designing consistent visual branding (colors, KPI card styling, titles) across multiple report pages for a polished, professional dashboard
- Structuring navigation with **action buttons** so users move intuitively between summary and detail views

---

## 📁 Repository Contents

```
route-profitability-dashboard/
│
├── RouteProfitDashboard.pbix   # Main Power BI file
└── README.md                    # Project documentation
```

---

## 👤 Author

**Prerita Morashiya**
