select * from Sales.SalesPerson

select BusinessEntityID
,SalesYTD
,5
 from Sales.SalesPerson
 order by SalesYTD DESC;



 select
  BusinessEntityID
    ,SalesYTD
    ,(select MAX(SalesYTD)
    from Sales.SalesPerson) as HighestSalesYTD
    ,(select MAX(SalesYTD)
    from Sales.SalesPerson) - SalesYTD as  salesGap
From Sales.SalesPerson
order by  SalesYTD desc;
---- 

select  * from 
sales.SalesOrderDetail

select  SalesOrderID, sum(LineTotal) As orderTotal 
from sales.SalesOrderDetail
group BY SalesOrderID
HAVING SUM(LineTotal) > (


select AVG(resultTable.MyValues) as AverageValue
from (select   sum(LineTotal) as MyValues 
from sales.SalesOrderDetail
GROUP by SalesOrderID) as resultTable
);
    
---