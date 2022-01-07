use AdventureWorks2017;
select BusinessEntityID, firstName, LastName
From Person.Person;


select BusinessEntityID, jobTitle
from HumanResources.Employee;

-- joining these tables 
select * 
from Person.Person as p inner JOIN HumanResources.Employee as H
on p.BusinessEntityID = h.BusinessEntityID;

-- joing wih a subquery
select businessEntityID
,firstName
,LastName
,(select jobTitle from HumanResources.Employee
where BusinessEntityID = myPeople.BusinessEntityID) as jobTitle
from Person.Person As MyPeople;
 
 --pivot table

 select productLIne, AVG(ListPrice) as averagePrice
 from  Production.Product
 where ProductLine IS NOT NULL
 Group by ProductLine;

Select 
'Average ListPrice' as 'productLine',
M, 
R, 
S,
T
from (select ProductLine,listprice from Production.Product) as sourceData 
PIVOT (AVG(ListPrice) for Productline in (M,R,S,T)) as PivotTable;



