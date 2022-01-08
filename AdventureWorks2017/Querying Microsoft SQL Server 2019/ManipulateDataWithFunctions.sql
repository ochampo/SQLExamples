Select * from Person.person

SELECT FirstName
,LastName
,UPPER(FirstName) as upperCase
,UPPER(LastName) as LowerCase
,LEN(FirstName) as LengthOfFirstName
,LEFT(LastName, 3) as First3Letters
from Person.Person;


Select FirstName
,LastName
, CONCAT(FirstName, ' ', LastName) as FullName -- does not handle middle name 
,CONCAT_WS(' ', FirstName,MiddleName,LastName)

 from Person.person



---round values 
SELECT BusinessEntityID
,salesYTD
,round (SalesYTD,2) as round2
,round(SalesYTD, -2) as roundHundreds
,CEILING(SalesYTD) as RoundCeiling
,FLOOR(SalesYTD) as roundFloor
from 
Sales.SalesPerson;

-- messing arround with dates
Select  BusinessEntityID
,HireDate
,Year(HireDate) as HireYear
,Month(HireDate) as MonthYear
,DAY(HireDate) as dayOfyear
from HumanResources.Employee

--- get hires by year

select Year(HireDate), COUNT(*) as NewHiresbyYear, Month(HireDate) as monthsOfHire
from HumanResources.Employee
Group by YEAR(HireDate),MONTH(HireDate)
order by YEAR(HireDate)

select Year(HireDate), COUNT(*) as NewHiresbyYear
from HumanResources.Employee
Group by YEAR(HireDate)
order by YEAR(HireDate)


select BusinessEntityID
,HireDate
,FORMAT(HireDate,'dddd') as FormatDate
from HumanResources.Employee

-- Create a random sort 

select WorkOrderID, NEWID() as newID
from Production.WorkOrder
order by newID;

-- IF statements 

select 
BusinessEntityID
,SalesYTD
,IIF(SalesYTD> 2000000,'Met sales Goals', 'Has not met sales goals') As status
from Sales.SalesPerson



select 
IIF(SalesYTD> 2000000,'Met sales Goals', 'Has not met sales goals') As status
,Count(*)
from Sales.SalesPerson
GROUP BY  IIF(SalesYTD> 2000000,'Met sales Goals', 'Has not met sales goals')

