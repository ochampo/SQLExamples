use AdventureWorks2017;

DECLARE @Counter int = 1;
DEClare @Product int = 710;
WHILE @counter <=3 
BEGIN
 SELECT @counter as CurrentValue
 set @counter = @counter + 1
 END 

--CREATE

use AdventureWorks2017;
DECLARE @Counter2 int = 1;
DEClare @Product2 int = 710;
WHILE @Counter2 <=3 
BEGIN
 SELECT ProductID,Name, ProductNumber,Color,ListPrice
 From Production.Product
 where ProductID = @Product2;
 set @Counter2 = @Counter2 + 1
 set @Product2 = @Product2 + 10 
 END 

