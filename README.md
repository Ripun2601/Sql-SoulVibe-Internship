# CollegeCourses Data Analysis via SQL and Power BI

## Overview

This repository contains the complete workflow for analyzing the `CollegeCourses` dataset using SQL and building an interactive Power BI dashboard. As a Data Analyst Intern at SoulVibe.Tech, I performed data cleaning, feature engineering, and visualization to extract actionable insights and answer key business questions.

---

## Table of Contents

* [Dataset](#dataset)
* [SQL Data Transformation](#sql-data-transformation)
* [Power BI Dashboard](#power-bi-dashboard)
* [Features](#features)
* [Usage](#usage)
* [Requirements](#requirements)
* [Project Structure](#project-structure)
* [Contributing](#contributing)
* [License](#license)

---

## Dataset

The `CollegeCourses` dataset contains information about higher education courses across various colleges and universities. Relevant fields include:

* `College_ID`
* `College_Name`
* `District`
* `Course_Name`
* `Course_Duration_Months`
* `College_Type` (Aided/Unaided)
* `Program_Level` (UG/PG)

---

## SQL Data Transformation

All SQL scripts are available in the `SQL Queries SoulVibe/` directory. Key transformations:

1. **Missing Values Handling**

   * Removed or filled missing `College_Type` values.

2. **Column Standardization**

   * Renamed columns to remove spaces: `Course_Name`, `Course_Duration_Months`.

3. **Feature Engineering**

   * Created `Specialization` by extracting the substring after the hyphen in `Course_Name`.

   ```sql
   ALTER TABLE CollegeCourses
   ADD Specialization VARCHAR(100);

   UPDATE CollegeCourses
   SET Specialization = SUBSTRING_INDEX(Course_Name, '-', -1);
   ```

4. **Duration Categorization**

   * Added `Duration_Category`:

     * Short (<12 months)
     * Medium (12–36 months)
     * Long (>36 months)

   ```sql
   ALTER TABLE CollegeCourses
   ADD Duration_Category VARCHAR(10);

   UPDATE CollegeCourses
   SET Duration_Category =
     CASE
       WHEN Course_Duration_Months < 12 THEN 'Short'
       WHEN Course_Duration_Months BETWEEN 12 AND 36 THEN 'Medium'
       ELSE 'Long'
     END;
   ```

5. **Aggregation & Insights**

   * Queries to find:

     * Total number of colleges
     * Unique courses count
     * Percentage of professional courses
     * Average course duration
     * Top districts, universities, and specializations

---

## Power BI Dashboard

The Power BI report file (`PowerbiSoulVibe.pbix`) is in the `PowerBI/` directory. Dashboard highlights:

* **KPI Cards**: Total Colleges, Unique Courses, % Professional, Avg. Duration
* **Bar Charts**: Course distribution, colleges by district, top 10 colleges
* **Pie/Donut Charts**: Aided vs. Unaided, UG vs. PG
* **Line Chart**: Avg. duration trends by district or category
* **Map Visual**: Filled map showing college count by district
* **Matrix Table**: University vs. Course Type with average duration
* **Slicers**: Course Category, College Type, Course Type, Professional/Non-Professional
* **Q\&A Page**: Pre-built answers to common business questions

---

## Features

* **Interactive Filtering** with slicers for deeper exploration
* **Cross-Filtering** across all visuals
* **Drill-Through** capabilities for district- and university-level detail
* **Dynamic Tooltips** showing contextual data

---

## Usage

1. Clone the repository:

   ```bash
   git clone https://github.com/Ripun2601/Sql-SoulVibe-Internship.git
   ```
2. Load the `CollegeCourses` table into your MySQL database.
3. Run SQL scripts from the `SQL Queries SoulVibe/` folder in sequence.
4. Open `PowerBI/PowerbiSoulvibe.pbix` in Power BI Desktop.
5. Interact with the dashboard and explore insights.

---

## Requirements

* **MySQL** (>= 5.7)
* **Power BI Desktop** (latest version)
* **Git**

---

## Project Structure

```
├── sql/
│   ├── 01_cleaning.sql
│   ├── 02_feature_engineering.sql
│   └── 03_aggregation_queries.sql
├── powerbi/
│   └── CollegeCourses_Report.pbix
├── README.md
└── LICENSE
```

---

## Contributing

Contributions and suggestions are welcome! Feel free to:

* Open an issue for bugs or feature requests
* Submit a pull request with improvements

---

## License

This project is licensed under the MIT License. See [LICENSE](LICENSE) for details.

