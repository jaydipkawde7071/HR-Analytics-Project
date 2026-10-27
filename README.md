# HR Analytics – Employee Attrition Analysis

## 📌 Project Overview

Employee attrition is an important business challenge that can affect workforce stability and organizational performance.

This project analyzes employee attrition data to identify workforce trends and understand the factors associated with employees leaving an organization. It combines **Python-based Exploratory Data Analysis (EDA), SQL queries, and an interactive Microsoft Excel dashboard** to explore employee demographics, job satisfaction, income, overtime, departments, and job roles.

The goal is to turn raw HR data into meaningful insights that can support data-driven HR decisions.

## 🎯 Project Objectives

* Analyze employee attrition patterns.
* Calculate key HR performance indicators (KPIs).
* Compare attrition across departments and job roles.
* Explore the relationship between overtime and employee attrition.
* Examine attrition patterns by age, income, and job satisfaction.
* Present key findings through charts and an Excel dashboard.

## 🛠️ Tools & Technologies

* **Python** – Data analysis and exploration
* **Pandas & NumPy** – Data manipulation and numerical analysis
* **Matplotlib & Seaborn** – Data visualization
* **SQL / MySQL** – Data querying and structured analysis
* **Microsoft Excel** – Dashboard reporting and visualization
* **Jupyter Notebook** – Interactive analysis environment

## 📂 Project Structure

```text
HR-Analytics-Project/
│
├── Dataset/
│   └── HR Analytics.csv
│
├── Python/
│   ├── HR Analytics.ipynb
│   └── charts/
│
├── SQL/
│   └── HR_Analytics.sql
│
├── HR Analytics Project Dashboard/
│   ├── HR_Analytics_Dashboard.xlsx
│   ├── HR_Dashboard_Overview_1280x720.png
│   └── HR_Dashboard_Details_1280x720.png
│
└── README.md
```

## 📊 Key Performance Indicators (KPIs)

| Metric                 |    Value |
| ---------------------- | -------: |
| Total Employees        |    1,470 |
| Employees Who Left     |      237 |
| Employees Who Stayed   |    1,233 |
| Overall Attrition Rate |   16.12% |
| Average Monthly Income | 6,502.93 |

## 🔍 Key Analysis Areas

### 1. Department-wise Attrition

Compared attrition across Sales, Research & Development, and Human Resources to identify departments with higher employee turnover.

### 2. Job Role Analysis

Examined attrition patterns across different job roles to identify roles with relatively higher employee turnover.

### 3. Overtime Analysis

Compared attrition between employees who work overtime and those who do not.

### 4. Age Group Analysis

Analyzed attrition across employee age groups to identify workforce trends.

### 5. Income Analysis

Compared average monthly income between employees who left and employees who stayed.

### 6. Job Satisfaction Analysis

Explored the relationship between job satisfaction levels and employee attrition.

## 💡 Key Findings

* The Sales department has a higher attrition rate than Research & Development in this dataset.
* Employees who work overtime have a higher attrition rate than employees who do not.
* Attrition varies across job roles and employee age groups.
* Employees who left had a lower average monthly income than employees who stayed.
* Lower job satisfaction is associated with higher attrition in this dataset.

These findings describe observed patterns and do not establish that any single factor directly causes employee attrition.

## 📈 Dashboard & Visualizations

The project includes an Excel dashboard for summarizing key HR metrics and presenting attrition trends.

Dashboard files:

* `HR_Analytics_Dashboard.xlsx` – Excel dashboard
* `HR_Dashboard_Overview_1280x720.png` – Dashboard overview
* `HR_Dashboard_Details_1280x720.png` – Detailed dashboard view

Python visualizations are available in the `Python/charts/` folder.

## 🚀 How to Run the Project

### Python Analysis

1. Clone or download this repository.

2. Install Python and Jupyter Notebook.

3. Install the required libraries:

   ```bash
   pip install pandas numpy matplotlib seaborn jupyter
   ```

4. Open `Python/HR Analytics.ipynb` in Jupyter Notebook.

5. Run the notebook cells to explore the analysis.

Run the notebook from the `Python` folder so that the relative dataset path `../Dataset/HR Analytics.csv` resolves correctly.

### SQL Analysis

1. Open MySQL Workbench.
2. Configure the dataset table according to the SQL queries.
3. Open `SQL/HR_Analytics.sql`.
4. Execute the queries to explore employee attrition patterns.

### Excel Dashboard

Open `HR Analytics Project Dashboard/HR_Analytics_Dashboard.xlsx` in Microsoft Excel.

## 📌 Conclusion

This project demonstrates how Python, SQL, and Excel can be combined to analyze HR data, identify employee attrition patterns, and communicate findings through data visualization.

It showcases practical skills in data cleaning, exploratory data analysis, SQL querying, KPI reporting, and dashboard development.

## ⚠️ Disclaimer

This is a portfolio learning project based on an HR attrition dataset. The findings describe patterns within the available data and should not be interpreted as proof of causation or as a definitive basis for individual employment decisions.
