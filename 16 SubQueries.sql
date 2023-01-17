-- Subqueries

select *
from Salary

insert into Salary values
	(1010,NULL,47000),
	(NULL,'Salesman',43000);

-- Subquerie in Select

Select EMPLOYEEID, SALARY, (Select AVG(SALARY) from Salary) as AvgSalary
from Salary

Select EMPLOYEEID, SALARY,AVG(SALARY) over () as AvgSalary
from Salary

Select EMPLOYEEID, SALARY,AVG(SALARY) as AvgSalary
from Salary
group by EMPLOYEEID, SALARY
order by 1,2

-- SubQueries in from

Select a.EMPLOYEEID, AvgSalary
from (Select EMPLOYEEID, SALARY,AVG(SALARY) over () as AvgSalary
	from Salary) a

-- SubQuerie in where

Select *
from Salary
Where EMPLOYEEID in (
		Select EmployeeID
		from EmployeeDemo
		where Age > 30)