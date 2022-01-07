use AdventureWorks2017;
select salesOrderID,Sum(lineTotal) as orderTotal
from sales.SalesOrderDetail
group by salesOrderID
HAVING SUM(lineTotal) > 2000

-- calculating averages 
select AVG(resultTable.MyValues)
from (select sum(linetotal) as MyValues
from Sales.SalesOrderDetail
group by SalesOrderID) as resultTable

-- putting it together 

use AdventureWorks2017;
select salesOrderID,Sum(lineTotal) as orderTotal
from sales.SalesOrderDetail
group by salesOrderID
HAVING SUM(lineTotal) > (select AVG(resultTable.MyValues)
from (select sum(linetotal) as MyValues
from Sales.SalesOrderDetail
group by SalesOrderID) as resultTable)

