# 🇵🇹 Portugal Census 2021 — Educational & Demographic Fragility Analysis

Territorial analysis of Portugal’s 2021 Census data, focusing on demographic ageing, educational attainment, and socio-educational vulnerability across municipalities.

---

## 📊 Project Overview

This project explores how demographic structure and educational levels vary across Portuguese municipalities, with the goal of identifying territories facing higher socio-educational fragility.

Rather than a closed study, this project is designed as an **exploratory and extensible analytical framework**, combining data analysis, modeling, and interactive visualization.

---

## ❓ Key Business Questions

- Which territories show the highest demographic ageing and loss of young population?
- Where are the biggest disparities between population structure and educational attainment?
- Which municipalities present the most fragile socio-educational profiles?
- How do demographic patterns vary across districts and regions?

---

## 🧠 Methodology

### Data Source
- Portugal Census 2021 (INE)

### Data Processing
- Data cleaning and transformation using Python (Pandas)
- Feature engineering for demographic and educational indicators
- Construction of analytical datasets at municipality level

### Analysis
- Exploratory Data Analysis (EDA)
- K-Means clustering (k=3) for educational segmentation
- Composite vulnerability score combining:
  - Ageing index
  - % population without schooling
  - % higher education

### Data Modeling
- Final analytical table (`concelhos_analitica`) created using SQL joins (SQLite)

### Visualization
- Interactive Power BI dashboard with multi-page analytical storytelling

---

## 📊 Interactive Dashboard

You can explore the interactive Power BI dashboard here:

👉 **[View Dashboard]https://app.powerbi.com/view?r=eyJrIjoiZDg4ZDQ1YzgtZGJjMS00MTQzLTk3MDktNTI0MmYxZjlhMjU5IiwidCI6IjlmN2RkY2U5LTgyNjktNGRmNy05MzQyLWJhNmY0OGY2YzQ0YyIsImMiOjl9**

> Note: The dashboard is published via Power BI Service for demonstration purposes.

---

## 📈 Dashboard Pages

### 1. Territorial Overview
- Population distribution across regions and municipalities
- Identification of most populated areas
- Geographic visualization

![Overview](images/page_1_overview.png)

---

### 2. Population Structure
- Distribution by age groups, gender, and education
- Cross-analysis of age and education

![Population Structure](images/page_2_population_structure.png)

---

### 3. Educational Fragility
- Relationship between higher education and lack of schooling
- Identification of territorial disparities
- Municipality clustering

![Educational Fragility](images/page_3_educational_fragility.png)

---

### 4. Demographic Ageing
- Ageing index and elderly population distribution
- Relationship between youth and ageing

![Ageing](images/page_4_demographic_ageing.png)

---

### 5. Socio-Educational Vulnerability
- Composite vulnerability classification (low, medium, high)
- Identification of high-risk municipalities
- Distribution across clusters

![Vulnerability](images/page_5_vulnerability.png)

---

## 🗂️ Repository Structure

```text
censos-pt-demografia
│
├── data
│   ├── raw              (INE source data)
│   ├── processed        (analytical datasets)
│   └── shapes           (GeoJSON files)
│
├── notebooks            (data preparation & analysis)
├── powerbi              (final dashboard)
├── sql                  (SQL scripts)
├── images               (dashboard screenshots)
│
├── requirements.txt
└── README.md
```

---

## 🛠️ Tools & Technologies

- Python (Pandas, NumPy)
- Scikit-learn (clustering)
- SQL (SQLite)
- Power BI
- VS Code

---

## 🤖 Use of Generative AI

Generative AI tools were used as a supporting resource throughout the project, particularly for:

- Structuring the analytical approach and workflow
- Assisting in code refinement and optimization (Python, DAX, SQL)
- Supporting documentation and project organization

All core decisions, data modeling, analytical logic, and interpretation of results were designed and validated independently.

The use of AI was strictly complementary, aimed at improving efficiency and clarity rather than replacing analytical reasoning.

---

## 🚀 Key Insights

- Interior regions show significantly higher ageing and lower educational attainment
- Coastal and metropolitan areas concentrate higher education levels
- Some municipalities present **combined risk factors**: ageing + low education
- Clustering reveals distinct territorial profiles beyond administrative divisions

---

## ⚠️ Limitations

- The analysis is based on a **single snapshot (Census 2021)**, without temporal comparison
- Some indicators rely on **aggregated categories**, which may mask finer-grained patterns
- The vulnerability score is a **simplified composite metric**, based on selected variables and assumptions
- The analysis focuses on **municipality level**, without deeper granularity (e.g., parish level)
- External factors such as income, employment, or migration dynamics were not included

These limitations should be considered when interpreting results, particularly for policy or decision-making contexts.

---

## 🚀 Future Improvements

This project is not intended as a final product, but as a foundation for further exploration.

Potential next steps include:

- Incorporating **foreign population data** to analyse integration and demographic pressure
- Adding **time-series analysis** (if historical data becomes available)
- Expanding the vulnerability model with **economic and social indicators** (income, employment, etc.)
- Refining the analysis to **lower geographic levels** (e.g., parish)
- Enhancing geospatial analysis using **NUTS classifications**
- Publishing the dashboard via **Power BI Service** for full interactivity
- Developing a **predictive or clustering extension** using additional features

This project is part of an ongoing analytical journey and may evolve into multiple complementary analyses.

---

## ⚠️ Notes

- The Power BI file (.pbix) is not included to protect the data model and measures.
- The dashboard is available via Power BI Service for interactive exploration.

---

## 📬 Contact

If you found this project interesting or relevant, feel free to connect:

- LinkedIn: *(https://www.linkedin.com/in/hugo-lopes-883747103/)*

---