SELECT *
FROM EMPLOYEEDEMOGRAPHICS

SELECT TOP 5 *
FROM EMPLOYEEDEMOGRAPHICS

SELECT DISTINCT(EMPLOYEEID)
FROM EMPLOYEEDEMOGRAPHICS

SELECT DISTINCT(GENDER)
FROM EMPLOYEEDEMOGRAPHICS

SELECT COUNT(LASTNAME) AS LASTNAMECOUNT
FROM EMPLOYEEDEMOGRAPHICS

SELECT * 
FROM EMPLOYEESALARY

SELECT MIN(SALARY) AS LOWEST_SALARY
FROM EMPLOYEESALARY

SELECT MAX(SALARY) AS HIGHEST_SALARY
FROM EMPLOYEESALARY

SELECT AVG(SALARY) AS AVERAGE_SALARY
FROM EMPLOYEESALARY