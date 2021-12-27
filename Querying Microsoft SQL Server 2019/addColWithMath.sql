/****** Script for SelectTopNRows command from SSMS  ******/
Select Name, ProductNumber, 'adventureWorks' as Manufactures , ListPrice,
ListPrice * .85 As SalesPrice 
from Production.Product
where ListPrice > 0 
  