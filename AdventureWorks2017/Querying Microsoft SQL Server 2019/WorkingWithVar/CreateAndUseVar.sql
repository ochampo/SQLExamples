
-- INT VALUES 
Declare @MyfirstVariable INT;

SET @MyFirstVariable = 5;

select  @MyFirstVariable as MyValue 

,@MyFirstVariable * 5 as Multiplication
, @MyFirstVariable + 10 as Addition;


-- STRING VALUES 
use AdventureWorks2017;
Declare @varColor Varchar(20) = 'blue';



select ProductID, Name, productNumber, color, ListPrice
From Production.Product
where Color = @varColor;
