Use AdventureWorks2017;
select BusinessEntityID
,salesYTD
, 
(select MAX(salesytd)
from sales.SalesPerson)
from sales.salesperson
order by salesYTD DESC;

Use AdventureWorks2017;
select top 1 SalesYTD
from sales.SalesPerson
ORDER BY SalesYTD DESC;
