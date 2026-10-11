-- KPI 1: Total Employees
SELECT COUNT(*) AS Total_Employees
FROM hr_analytics_dataset;

-- KPI 2: Total Attrition
SELECT COUNT(*) AS Total_Attrition
FROM hr_analytics_dataset
WHERE Attrition = 'Yes';

-- KPI 3: Attrition Rate
SELECT ROUND(
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
    * 100.0 / COUNT(*), 2
) AS Attrition_Rate
FROM hr_analytics_dataset;

-- KPI 4: Active Employees
SELECT COUNT(*) AS Active_Employees
FROM hr_analytics_dataset
WHERE Attrition = 'No';

-- KPI 5: Average Employee Age
SELECT ROUND(AVG(Age), 0) AS Average_Age
FROM hr_analytics_dataset;

-- KPI 6: Average Monthly Income
SELECT ROUND(AVG(`Monthly Income`), 0) AS Average_Monthly_Income
FROM hr_analytics_dataset;

-- Analysis 1: Attrition by Department
SELECT
    Department,
    COUNT(*) AS Attrition_Count
FROM hr_analytics_dataset
WHERE Attrition = 'Yes'
GROUP BY Department
ORDER BY Attrition_Count DESC;

-- Analysis 2: Attrition by Job Role
SELECT
    `Job Role`,
    COUNT(*) AS Attrition_Count
FROM hr_analytics_dataset
WHERE Attrition = 'Yes'
GROUP BY `Job Role`
ORDER BY Attrition_Count DESC;

-- Analysis 3: Attrition by Age Group
SELECT
    `Age Group`,
    COUNT(*) AS Attrition_Count
FROM hr_analytics_dataset
WHERE Attrition = 'Yes'
GROUP BY `Age Group`
ORDER BY Attrition_Count DESC;

-- Analysis 4: Employees by Age Group and Gender
SELECT
    `Age Group`,
    Gender,
    COUNT(*) AS Employee_Count
FROM hr_analytics_dataset
GROUP BY `Age Group`, Gender
ORDER BY `Age Group`, Gender;

-- Analysis 5: Job Satisfaction Rating
SELECT
    `Job Satisfaction`,
    COUNT(*) AS Employee_Count
FROM hr_analytics_dataset
GROUP BY `Job Satisfaction`
ORDER BY `Job Satisfaction`;

-- Analysis 6: Attrition by Education Field
SELECT
    `Education Field`,
    COUNT(*) AS Attrition_Count
FROM hr_analytics_dataset
WHERE Attrition = 'Yes'
GROUP BY `Education Field`
ORDER BY Attrition_Count DESC;
