SELECT FirstName +' '+ LastName AS FullName
FROM EmployeeDemo

SELECT AVG(Salary) AS AvgSalary
FROM Salary

SELECT DEMO.EmployeeID, DEMO.FirstName, DEMO.LastName, DEMO.Age, SAL.JOBTITLE, SAL.SALARY
FROM EmployeeDemo AS DEMO
JOIN Salary AS SAL
	ON DEMO.EmployeeID = SAL.EMPLOYEEID
