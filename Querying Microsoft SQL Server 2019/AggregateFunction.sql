select * from sales.salesorderDetail;



Select SalesOrderID, 
Sum(Linetotal) as orderTotal
,sum(OrderQty) as NumberOfItems
,Count(Distinct ProductID) as UNIQUEItems
from sales.salesorderDetail
GROUP by SalesOrderID
ORDER by orderTotal desc; 


SELECT Color, Count(*) as numbersOfProd
From Production.Product
where Color is not NULL
GROUP by Color
Having Count(*) > 25 ; 