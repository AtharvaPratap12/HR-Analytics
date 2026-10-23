-- ============================================
-- HR ANALYTICS PROJECT
-- SQL Analysis Queries
-- Dataset: IBM HR Employee Attrition
-- Total Records: 1470
-- ============================================

USE hr_analytics;
-- Attrition by Department
SELECT
Department,
COUNT() AS total_employees,
SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_who_left,
SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT() AS attrition_rate
FROM hr_employee_attrition
GROUP BY Department
ORDER BY attrition_rate DESC;

--  Attrition by Overtime

SELECT
OverTime,
COUNT() AS total_employees,
SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_who_left,
SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT() AS attrition_rate
FROM hr_employee_attrition
GROUP BY OverTime
ORDER BY attrition_rate DESC;

--  Attrition by Job Role

SELECT
JobRole,
COUNT() AS total_employees,
SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_who_left,
SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT() AS attrition_rate
FROM hr_employee_attrition
GROUP BY JobRole
ORDER BY attrition_rate DESC;

--  Average Monthly Income by Department

SELECT
Department,
ROUND(AVG(MonthlyIncome), 2) AS avg_monthly_income
FROM hr_employee_attrition
GROUP BY Department
ORDER BY avg_monthly_income DESC;

--  Average Monthly Income by Department and Attrition

SELECT
Department,
Attrition,
ROUND(AVG(MonthlyIncome), 2) AS avg_monthly_income
FROM hr_employee_attrition
GROUP BY Department, Attrition
ORDER BY Department, Attrition;

--  Average Years at Company by Attrition

SELECT
Attrition,
ROUND(AVG(YearsAtCompany), 2) AS avg_years_at_company
FROM hr_employee_attrition
GROUP BY Attrition;

--  Attrition by Tenure Group

SELECT
CASE
WHEN YearsAtCompany <= 2 THEN '0-2 Years'
WHEN YearsAtCompany <= 5 THEN '3-5 Years'
ELSE '6+ Years'
END AS TenureGroup,
COUNT() AS total_employees,
SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_who_left,
ROUND(
SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(),
2
) AS attrition_rate
FROM hr_employee_attrition
GROUP BY TenureGroup
ORDER BY
CASE
WHEN TenureGroup = '0-2 Years' THEN 1
WHEN TenureGroup = '3-5 Years' THEN 2
ELSE 3
END;

--  Job Satisfaction vs Attrition

SELECT
JobSatisfaction,
COUNT() AS total_employees,
SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_who_left,
ROUND(
SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(),
2
) AS attrition_rate
FROM hr_employee_attrition
GROUP BY JobSatisfaction
ORDER BY JobSatisfaction;

--  Number of Departures by Job Satisfaction

SELECT
JobSatisfaction,
COUNT(*) AS employees_who_left
FROM hr_employee_attrition
WHERE Attrition = 'Yes'
GROUP BY JobSatisfaction
ORDER BY JobSatisfaction;

--  Overtime Attrition by Department

SELECT
Department,
COUNT() AS overtime_employees,
SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_who_left,
ROUND(
SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(),
2
) AS attrition_rate
FROM hr_employee_attrition
WHERE OverTime = 'Yes'
GROUP BY Department
ORDER BY attrition_rate DESC;