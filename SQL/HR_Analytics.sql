CREATE DATABASE hr_analytics;

USE hr_analytics;
SHOW DATABASES;

USE hr_analytics;

CREATE TABLE employees (
    Age INT,
    Attrition VARCHAR(10),
    BusinessTravel VARCHAR(30),
    DailyRate INT,
    Department VARCHAR(50),
    DistanceFromHome INT,
    Education INT,
    EducationField VARCHAR(50),
    EmployeeCount INT,
    EmployeeNumber INT PRIMARY KEY,
    EnvironmentSatisfaction INT,
    Gender VARCHAR(20),
    HourlyRate INT,
    JobInvolvement INT,
    JobLevel INT,
    JobRole VARCHAR(50),
    JobSatisfaction INT,
    MaritalStatus VARCHAR(20),
    MonthlyIncome INT,
    MonthlyRate INT,
    NumCompaniesWorked INT,
    Over18 VARCHAR(5),
    OverTime VARCHAR(5),
    PercentSalaryHike INT,
    PerformanceRating INT,
    RelationshipSatisfaction INT,
    StandardHours INT,
    StockOptionLevel INT,
    TotalWorkingYears INT,
    TrainingTimesLastYear INT,
    WorkLifeBalance INT,
    YearsAtCompany INT,
    YearsInCurrentRole INT,
    YearsSinceLastPromotion INT,
    YearsWithCurrManager INT
);

DESCRIBE employees;


USE hr_analytics;

SELECT COUNT(*) AS total_employees
FROM employees;

select * from employees limit 10;


################################################################################################################################
# Q1: 
SELECT COUNT(*) AS Total_Employees
FROM employees;


# Q2:
SELECT COUNT(*) AS Employees_Left
FROM employees
WHERE Attrition = 'Yes';

# Q3:
SELECT Department, COUNT(*) AS Total_Employees
FROM employees
GROUP BY Department;

# Q4:
SELECT
    Department,
    COUNT(*) AS Total_Employees,
    SUM(CASE
        WHEN Attrition = 'Yes' THEN 1
        ELSE 0
    END) AS Employees_Left
FROM employees
GROUP BY Department;

# Q5:
SELECT
    Department,
    COUNT(*) AS Total_Employees,
    SUM(CASE
        WHEN Attrition = 'Yes' THEN 1
        ELSE 0
    END) AS Employees_Left,
    ROUND(
        100.0 * SUM(CASE
            WHEN Attrition = 'Yes' THEN 1
            ELSE 0
        END) / COUNT(*),
        2
    ) AS Attrition_Rate
FROM employees
GROUP BY Department
ORDER BY Attrition_Rate DESC;

# Q6:
SELECT
    OverTime,
    COUNT(*) AS Total_Employees,
    SUM(CASE
        WHEN Attrition = 'Yes' THEN 1
        ELSE 0
    END) AS Employees_Left
FROM employees
GROUP BY OverTime;



# Q7:
SELECT
    Attrition,
    ROUND(AVG(MonthlyIncome), 2) AS Average_Monthly_Income
FROM employees
GROUP BY Attrition;

# Q8: 
SELECT
    Attrition,
    ROUND(AVG(JobSatisfaction), 2) AS Avg_Job_Satisfaction
FROM employees
GROUP BY Attrition;

# Q-9: 
SELECT
    CASE
        WHEN Age < 25 THEN 'Under 25'
        WHEN Age BETWEEN 25 AND 34 THEN '25-34'
        WHEN Age BETWEEN 35 AND 44 THEN '35-44'
        WHEN Age BETWEEN 45 AND 54 THEN '45-54'
        ELSE '55 and above'
    END AS Age_Group,
    COUNT(*) AS Employees_Left
FROM employees
WHERE Attrition = 'Yes'
GROUP BY Age_Group
ORDER BY Employees_Left DESC;

# Q10. Job Role vs Employee Attrition
SELECT
    JobRole,
    COUNT(*) AS Total_Employees,
    SUM(
        CASE
            WHEN Attrition = 'Yes' THEN 1
            ELSE 0
        END
    ) AS Employees_Left
FROM employees
GROUP BY JobRole
ORDER BY Employees_Left DESC;

# Q11. Job Role-wise Attrition Rate
SELECT
    JobRole,
    COUNT(*) AS Total_Employees,
    SUM(CASE
        WHEN Attrition = 'Yes' THEN 1
        ELSE 0
    END) AS Employees_Left,
    ROUND(
        SUM(CASE
            WHEN Attrition = 'Yes' THEN 1
            ELSE 0
        END) * 100.0 / COUNT(*),
        2
    ) AS Attrition_Rate
FROM employees
GROUP BY JobRole
ORDER BY Attrition_Rate DESC;

# Q12. Monthly Income vs Overtime
SELECT
    OverTime,
    COUNT(*) AS Total_Employees,
    ROUND(AVG(MonthlyIncome), 2) AS Average_Monthly_Income
FROM employees
GROUP BY OverTime
ORDER BY Average_Monthly_Income DESC;

# Q13. Attrition Rate by Business Travel
SELECT
    BusinessTravel,
    COUNT(*) AS Total_Employees,
    SUM(
        CASE
            WHEN Attrition = 'Yes' THEN 1
            ELSE 0
        END
    ) AS Employees_Left,
    ROUND(
        SUM(
            CASE
                WHEN Attrition = 'Yes' THEN 1
                ELSE 0
            END
        ) * 100.0 / COUNT(*),
        2
    ) AS Attrition_Rate
FROM employees
GROUP BY BusinessTravel
ORDER BY Attrition_Rate DESC;


# Q14: Education Field vs Employee Attrition
SELECT
    EducationField,
    COUNT(*) AS Total_Employees,
    SUM(
        CASE
            WHEN Attrition = 'Yes' THEN 1
            ELSE 0
        END
    ) AS Employees_Left,
    ROUND(
        SUM(
            CASE
                WHEN Attrition = 'Yes' THEN 1
                ELSE 0
            END
        ) * 100.0 / COUNT(*),
        2
    ) AS Attrition_Rate
FROM employees
GROUP BY EducationField
ORDER BY Attrition_Rate DESC;

# Q15: Marital Status vs Employee Attrition

SELECT
    MaritalStatus,
    COUNT(*) AS Total_Employees,
    SUM(
        CASE
            WHEN Attrition = 'Yes' THEN 1
            ELSE 0
        END
    ) AS Employees_Left,
    ROUND(
        SUM(
            CASE
                WHEN Attrition = 'Yes' THEN 1
                ELSE 0
            END
        ) * 100.0 / COUNT(*),
        2
    ) AS Attrition_Rate
FROM employees
GROUP BY MaritalStatus
ORDER BY Attrition_Rate DESC;

# Q16: Years at Company vs Employee Attrition
SELECT
    YearsAtCompany,
    COUNT(*) AS Total_Employees,
    SUM(
        CASE
            WHEN Attrition = 'Yes' THEN 1
            ELSE 0
        END
    ) AS Employees_Left,
    ROUND(
        SUM(
            CASE
                WHEN Attrition = 'Yes' THEN 1
                ELSE 0
            END
        ) * 100.0 / COUNT(*),
        2
    ) AS Attrition_Rate
FROM employees
GROUP BY YearsAtCompany
ORDER BY YearsAtCompany;

# Q17: Experience Group vs Employee Attrition
SELECT
    CASE
        WHEN YearsAtCompany BETWEEN 0 AND 2 THEN '0-2 Years'
        WHEN YearsAtCompany BETWEEN 3 AND 5 THEN '3-5 Years'
        WHEN YearsAtCompany BETWEEN 6 AND 10 THEN '6-10 Years'
        ELSE '11+ Years'
    END AS Experience_Group,

    COUNT(*) AS Total_Employees,

    SUM(
        CASE
            WHEN Attrition = 'Yes' THEN 1
            ELSE 0
        END
    ) AS Employees_Left,

    ROUND(
        SUM(
            CASE
                WHEN Attrition = 'Yes' THEN 1
                ELSE 0
            END
        ) * 100.0 / COUNT(*),
        2
    ) AS Attrition_Rate

FROM employees
GROUP BY Experience_Group
ORDER BY
    CASE Experience_Group
        WHEN '0-2 Years' THEN 1
        WHEN '3-5 Years' THEN 2
        WHEN '6-10 Years' THEN 3
        WHEN '11+ Years' THEN 4
    END;

# Q18: Salary Hike vs Employee Attrition
SELECT
    Attrition,
    COUNT(*) AS Total_Employees,
    ROUND(AVG(PercentSalaryHike), 2) AS Average_Salary_Hike,
    MIN(PercentSalaryHike) AS Minimum_Salary_Hike,
    MAX(PercentSalaryHike) AS Maximum_Salary_Hike
FROM employees
GROUP BY Attrition;

# Q19: Performance Rating vs Employee Attrition
SELECT
    PerformanceRating,
    COUNT(*) AS Total_Employees,
    SUM(
        CASE
            WHEN Attrition = 'Yes' THEN 1
            ELSE 0
        END
    ) AS Employees_Left,
    ROUND(
        SUM(
            CASE
                WHEN Attrition = 'Yes' THEN 1
                ELSE 0
            END
        ) * 100.0 / COUNT(*),
        2
    ) AS Attrition_Rate
FROM employees
GROUP BY PerformanceRating
ORDER BY PerformanceRating;

# Q20: Work-Life Balance vs Employee Attrition
SELECT
    WorkLifeBalance,
    COUNT(*) AS Total_Employees,
    SUM(
        CASE
            WHEN Attrition = 'Yes' THEN 1
            ELSE 0
        END
    ) AS Employees_Left,
    ROUND(
        SUM(
            CASE
                WHEN Attrition = 'Yes' THEN 1
                ELSE 0
            END
        ) * 100.0 / COUNT(*),
        2
    ) AS Attrition_Rate
FROM employees
GROUP BY WorkLifeBalance
ORDER BY WorkLifeBalance;

# Q21: Job Satisfaction vs Employee Attrition
SELECT
    JobSatisfaction,
    COUNT(*) AS Total_Employees,
    SUM(
        CASE
            WHEN Attrition = 'Yes' THEN 1
            ELSE 0
        END
    ) AS Employees_Left,
    ROUND(
        SUM(
            CASE
                WHEN Attrition = 'Yes' THEN 1
                ELSE 0
            END
        ) * 100.0 / COUNT(*),
        2
    ) AS Attrition_Rate
FROM employees
GROUP BY JobSatisfaction
ORDER BY JobSatisfaction;

# Q22: Distance From Home vs Employee Attrition
SELECT
    DistanceFromHome,
    COUNT(*) AS Total_Employees,
    SUM(
        CASE
            WHEN Attrition = 'Yes' THEN 1
            ELSE 0
        END
    ) AS Employees_Left,
    ROUND(
        SUM(
            CASE
                WHEN Attrition = 'Yes' THEN 1
                ELSE 0
            END
        ) * 100.0 / COUNT(*),
        2
    ) AS Attrition_Rate
FROM employees
GROUP BY DistanceFromHome
ORDER BY DistanceFromHome;

# Q23: Distance Group vs Employee Attrition
SELECT
    CASE
        WHEN DistanceFromHome BETWEEN 1 AND 10 THEN 'Near (1-10)'
        WHEN DistanceFromHome BETWEEN 11 AND 20 THEN 'Medium (11-20)'
        ELSE 'Far (21-29)'
    END AS Distance_Group,

    COUNT(*) AS Total_Employees,

    SUM(
        CASE
            WHEN Attrition = 'Yes' THEN 1
            ELSE 0
        END
    ) AS Employees_Left,

    ROUND(
        SUM(
            CASE
                WHEN Attrition = 'Yes' THEN 1
                ELSE 0
            END
        ) * 100.0 / COUNT(*),
        2
    ) AS Attrition_Rate

FROM employees
GROUP BY Distance_Group
ORDER BY
    CASE Distance_Group
        WHEN 'Near (1-10)' THEN 1
        WHEN 'Medium (11-20)' THEN 2
        WHEN 'Far (21-29)' THEN 3
    END;

# Q24 — Monthly Income Group vs Attrition
SELECT
    CASE
        WHEN MonthlyIncome < 3000 THEN 'Low Income'
        WHEN MonthlyIncome < 6000 THEN 'Medium Income'
        ELSE 'High Income'
    END AS Income_Group,

    COUNT(*) AS Total_Employees,

    SUM(
        CASE
            WHEN Attrition = 'Yes' THEN 1
            ELSE 0
        END
    ) AS Employees_Left,

    ROUND(
        SUM(
            CASE
                WHEN Attrition = 'Yes' THEN 1
                ELSE 0
            END
        ) * 100.0 / COUNT(*),
        2
    ) AS Attrition_Rate

FROM employees
GROUP BY Income_Group
ORDER BY
    CASE Income_Group
        WHEN 'Low Income' THEN 1
        WHEN 'Medium Income' THEN 2
        WHEN 'High Income' THEN 3
    END;

# Q25: Final HR Attrition Summary
SELECT
    COUNT(*) AS Total_Employees,

    SUM(
        CASE
            WHEN Attrition = 'Yes' THEN 1
            ELSE 0
        END
    ) AS Employees_Left,

    SUM(
        CASE
            WHEN Attrition = 'No' THEN 1
            ELSE 0
        END
    ) AS Employees_Stayed,

    ROUND(
        SUM(
            CASE
                WHEN Attrition = 'Yes' THEN 1
                ELSE 0
            END
        ) * 100.0 / COUNT(*),
        2
    ) AS Overall_Attrition_Rate,

    ROUND(AVG(MonthlyIncome), 2) AS Average_Monthly_Income,

    ROUND(AVG(JobSatisfaction), 2) AS Average_Job_Satisfaction,

    SUM(
        CASE
            WHEN OverTime = 'Yes' THEN 1
            ELSE 0
        END
    ) AS Overtime_Employees

FROM employees;


#####################################################                 #################################################################





























