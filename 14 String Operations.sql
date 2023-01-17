--Drop Table EmployeeErrors;


CREATE TABLE EmployeeErrors (
EmployeeID varchar(50)
,FirstName varchar(50)
,LastName varchar(50)
)

Insert into EmployeeErrors Values 
('1001  ', 'Jimbo', 'Halbert')
,('  1002', 'Pamela', 'Beasely')
,('1005', 'TOby', 'Flenderson - Fired')

Select *
From EmployeeErrors

-- TRIM

Select EmployeeID, TRIM(EmployeeID) as TrimedID
from EmployeeErrors

Select EmployeeID, LTRIM(EmployeeID) as LTrimedID
from EmployeeErrors

Select EmployeeID, RTRIM(EmployeeID) as RTrimedID
from EmployeeErrors

-- REPLACE

Select LastName, REPLACE(LastName, '- Fired','') FixedLastName
from EmployeeErrors

-- SUBSTRING

select SUBSTRING(FirstName, 1, 3) as GoodName
from EmployeeErrors

Select Substring(err.FirstName,1,3), Substring(dem.FirstName,1,3), Substring(err.LastName,1,3), Substring(dem.LastName,1,3)
FROM EmployeeErrors err
JOIN EmployeeDemo dem
	on Substring(err.FirstName,1,3) = Substring(dem.FirstName,1,3)
	and Substring(err.LastName,1,3) = Substring(dem.LastName,1,3)

-- UPPER & LOWER

Select FirstName, LOWER(FirstName)
from EmployeeErrors

Select FirstName, UPPER(FirstName)
from EmployeeErrors