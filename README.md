# HR Analytics – Employee Attrition Analysis

## Project Overview
This project analyzes employee attrition to identify workforce patterns and factors associated with employees leaving an organization. The project uses Python for exploratory data analysis and visualizations, SQL for structured analysis, and Microsoft Excel for dashboard reporting.

## Project Structure
- `Dataset/HR Analytics.csv` — source dataset
- `Python/HR Analytics.ipynb` — Python analysis notebook
- `Python/charts/` — exported analysis charts
- `SQL/HR_Analytics.sql` — SQL analysis queries
- `HR Analytics Project Dashboard/HR_Analytics_Dashboard.xlsx` — Excel dashboard
- `HR Analytics Project Dashboard/HR_Dashboard_Overview_1280x720.png` — dashboard preview
- `HR Analytics Project Dashboard/HR_Dashboard_Details_1280x720.png` — detailed dashboard preview

## Tools
- Python
- Pandas, NumPy
- Matplotlib, Seaborn
- SQL / MySQL
- Microsoft Excel
- Jupyter Notebook

## Key Metrics
- Total employees: 1,470
- Employees who left: 237
- Employees who stayed: 1,233
- Overall attrition rate: 16.12%
- Average monthly income: 6,502.93

## Key Findings
- Sales has a higher attrition rate than Research & Development in this dataset.
- Employees working overtime show a higher attrition rate than employees who do not work overtime.
- Attrition varies across job roles, age groups, income levels, and job satisfaction levels.

## How to Use
1. Open `HR Analytics Project Dashboard/HR_Analytics_Dashboard.xlsx` in Microsoft Excel.
2. Open `Python/HR Analytics.ipynb` in Jupyter Notebook.
3. Ensure Python dependencies are installed (`pandas`, `numpy`, `matplotlib`, and `seaborn`).
4. Run the notebook from the `Python` folder so the relative dataset path `../Dataset/HR Analytics.csv` resolves correctly.
5. Run the SQL statements in `SQL/HR_Analytics.sql` in a compatible MySQL environment after setting up the dataset table.

## Note
This is a portfolio learning project using an HR attrition dataset. Findings describe patterns in the dataset and should not be interpreted as proof of causation.
