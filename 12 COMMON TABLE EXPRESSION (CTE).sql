--SELECT *
--FROM EmployeeDemo

-- COMMON TABLE EXPRESSION

WITH CTE_Employee as
(SELECT FirstName, LastName, Gender, SALARY,
	count(gender) over (PARTITION BY Gender) as TotalGender,
	AVG(SALARY) over (PARTITION BY Gender) as AvgSalary
FROM EmployeeDemo DEMO
JOIN Salary SAL
	ON DEMO.EmployeeID=SAL.EMPLOYEEID
WHERE SALARY > '45000'
)
SELECT *
FROM CTE_Employee