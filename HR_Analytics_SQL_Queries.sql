
/*
==================================================
HR ANALYTICS 
Employee Attrition & Workforce Analysis
==================================================
*/


SELECT * FROM hr_data LIMIT 20

/*
==================================================
SECTION 1: WORKFORCE OVERVIEW
==================================================
*/


--Q1: What is the total number of employees in the organization?

SELECT COUNT(*) AS "TotalEmployees"
FROM hr_data

--Q2: What is the gender distribution among employees?

SELECT "Gender", COUNT(*)
FROM hr_data
GROUP BY "Gender"

--Q3: What is the average employee age?

SELECT ROUND(AVG("Age"),0) AS "Average Age"
FROM hr_data

--Q4: What is the average salary across employees?

SELECT ROUND(AVG("MonthlyIncome"),2) AS "Average Salary"
FROM hr_data

--Q5: How are employees distributed across departments?

SELECT "Department", COUNT(*) AS "Employee Count"
FROM hr_data
GROUP BY "Department"
ORDER BY "Employee Count" DESC

--Q6: How are employees distributed across age groups?

SELECT "AgeGroup", COUNT(*) AS "Employee Count"
FROM hr_data
GROUP BY "AgeGroup"
ORDER BY "Employee Count" DESC


/*
==================================================
SECTION 2: ATTRITION ANALYSIS
==================================================
*/



--Q1: What is the employee attrition rate?

SELECT ROUND((SUM(CASE WHEN "Attrition" = 'Yes' THEN 1 ELSE 0 END)*100)/COUNT(*),2) AS "Attrition Rate"
FROM hr_data

--Q2: Which departments experience highest attrition?

SELECT "Department", SUM(CASE WHEN "Attrition" = 'Yes' THEN 1 ELSE 0 END) AS "Attrition Count"
FROM hr_data
GROUP BY "Department"
ORDER BY "Attrition Count" DESC

--Q3: Which job roles have highest employee turnover?

SELECT "JobRole", SUM(CASE WHEN "Attrition" = 'Yes' THEN 1 ELSE 0 END) AS "Attrition"
FROM hr_data
GROUP BY "JobRole"
ORDER BY "Attrition" DESC

--Q4: Does overtime contribute to employee attrition?

SELECT "OverTime","Attrition", COUNT(*) 
FROM hr_data
GROUP BY "OverTime","Attrition"

--Q5: Which age groups show highest attrition?

SELECT "AgeGroup", SUM(CASE WHEN "Attrition" = 'Yes' THEN 1 ELSE 0 END) AS "Attrition Count"
FROM hr_data 
GROUP BY "AgeGroup"
ORDER BY "Attrition Count" DESC

--Q6: Does job satisfaction impact attrition?

SELECT "JobSatisfaction", COUNT(*)
FROM hr_data
WHERE "Attrition" = 'Yes'
GROUP BY "JobSatisfaction"
ORDER BY "JobSatisfaction" 



/*
==================================================
SECTION 3: SALARY ANALYSIS
==================================================
*/



--	Q1: Is salary linked to attrition?

SELECT  "Attrition", ROUND(AVG("MonthlyIncome"),2) AS "Average Salary"
FROM hr_data
GROUP BY "Attrition"

-- Q2: Which department receives highest average salary?

SELECT  "Department", ROUND(AVG("MonthlyIncome"),2) AS "Average Salary"
FROM hr_data
GROUP BY "Department"
ORDER BY "Average Salary" DESC

--Q3: What are the top 5 highest paying roles

SELECT "JobRole", MAX("AnnualIncome") AS "Highest Salary"
FROM hr_data
GROUP BY "JobRole"
ORDER BY "Highest Salary" DESC LIMIT 5

--Q4: How does work experience influence salary?

SELECT "TotalWorkingYears", ROUND(AVG("MonthlyIncome"),2) AS "Average Salary"
FROM hr_data
GROUP BY "TotalWorkingYears"
ORDER BY "TotalWorkingYears" ASC



/*
==================================================
SECTION 4: RETENTION RISK ANALYSIS
==================================================
*/


--Q1: Does promotion delay affect retention?

SELECT "Attrition",
ROUND(AVG("PromotionGap"),2) as "Average Promotion Gap"
FROM hr_data
GROUP BY "Attrition"
ORDER BY "Average Promotion Gap" DESC

--Q2: Which employees are high retention risk?

SELECT * 
FROM hr_data
WHERE "OverTime" = 'Yes' AND "PromotionGap">=3 AND "JobSatisfaction" <2

--Q3: Which departments contain most high-risk employees?

SELECT "Department", COUNT(*) AS "High Risk Employees"
FROM hr_data
WHERE "OverTime" = 'Yes' AND "PromotionGap">=3 AND "JobSatisfaction" <2
GROUP BY "Department"
ORDER BY "High Risk Employees" DESC

--Q4: How are employees distributed across risk categories?

SELECT CASE
			WHEN "OverTime" = 'Yes' AND "PromotionGap">=3 AND "JobSatisfaction" <2 THEN 'High Risk'
			WHEN "JobSatisfaction"<=3 THEN 'Medium Risk'
			ELSE 'Low Risk'
			END
	   AS "Risk Category", COUNT(*)
FROM hr_data
GROUP BY "Risk Category"
			
--Q5: Does overtime increase employee risk?

SELECT "OverTime", COUNT(*)
FROM hr_data
WHERE "JobSatisfaction"<2
GROUP BY "OverTime"



/*
==================================================
SECTION 5: ADVANCED SQL
==================================================
*/



--Q1: Rank departments by attrition

WITH dept AS(
SELECT "Department", SUM(CASE WHEN "Attrition" = 'Yes' THEN 1 ELSE 0 END) AS "Attrition"
FROM hr_data
GROUP BY "Department"
)

SELECT *, 
RANK() OVER(ORDER BY "Attrition" DESC) 
FROM dept

--Q2: Rank job roles by average salary

WITH jobrole AS(
SELECT "JobRole", ROUND(AVG("MonthlyIncome"),2) AS "Average Salary"
FROM hr_data
GROUP BY "JobRole"
)

SELECT *,
RANK() OVER (ORDER BY "Average Salary" DESC)
FROM jobrole

--Q3: Compare overtime impact on attrition using FILTER()

SELECT "OverTime",
    COUNT(*) FILTER(WHERE "Attrition"='Yes') AS "Attrition Count",
    ROUND(COUNT(*) FILTER(WHERE "Attrition" ='Yes')*100.0/COUNT(*),2) AS "Attrition Rate"
FROM hr_data
GROUP BY "OverTime";



/*
==================================================

KEY BUSINESS FINDINGS

==================================================

1. Employees working overtime exhibit higher attrition.

2. Delayed promotions correlate with retention risk.

3. Sales and Research & Development show higher attrition.

4. Lower satisfaction levels increase turnover tendency.

==================================================
*/
