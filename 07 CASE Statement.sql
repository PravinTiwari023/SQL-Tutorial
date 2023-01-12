SELECT FirstName, LastName, Age,
CASE
	WHEN Age = 38 THEN 'Stanley'
	WHEN Age > 31 THEN 'Old'
	Else 'Young'
END as AgeCategory
FROM EmployeeDemo
WHERE Age IS NOT NULL
ORDER BY Age

SELECT EMPLOYEEDEMOGRAPHICS.EMPLOYEEID, FIRSTNAME, LASTNAME, JOBTITLE, SALARY,
CASE
	WHEN JOBTITLE = 'Salesman' THEN SALARY + (SALARY*0.10)
	WHEN JOBTITLE = 'Accountant' THEN SALARY + (SALARY*0.05)
	WHEN JOBTITLE = 'HR' THEN SALARY + (SALARY*0.01)
	ELSE SALARY + (SALARY*0.03)
END AS NEW_SALARY_INCRE
FROM EMPLOYEEDEMOGRAPHICS
JOIN Salary
	ON EMPLOYEEDEMOGRAPHICS.EMPLOYEEID = Salary.EmployeeID