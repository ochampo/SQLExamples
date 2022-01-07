use AdventureWorks2017;
select ProductCategoryID
,Null as ProdSubCatID
,Name 
From Production.ProductCategory

UNION

select 
ProductCategoryID
,ProductSubcategoryID
,Name 
from  Production.ProductSubcategory;