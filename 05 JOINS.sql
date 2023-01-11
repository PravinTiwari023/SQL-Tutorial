select * 
from EmployeeDemo

select * 
from Salary

select *
from [SQL tutorial].dbo.EmployeeDemo
inner join [SQL tutorial].dbo.Salary
	on EmployeeDemo.EmployeeID = Salary.EmployeeID

select *
from [SQL tutorial].dbo.EmployeeDemo
full outer join [SQL tutorial].dbo.Salary
	on EmployeeDemo.EmployeeID = Salary.EmployeeID

select *
from [SQL tutorial].dbo.EmployeeDemo
left outer join [SQL tutorial].dbo.Salary
	on EmployeeDemo.EmployeeID = Salary.EmployeeID

select *
from [SQL tutorial].dbo.EmployeeDemo
right outer join [SQL tutorial].dbo.Salary
	on EmployeeDemo.EmployeeID = Salary.EmployeeID

select EmployeeDemo.EmployeeID, FirstName, LastName, Age, Gender, Salary
from [SQL tutorial].dbo.EmployeeDemo
full outer join [SQL tutorial].dbo.Salary
	on EmployeeDemo.EmployeeID = Salary.EmployeeID