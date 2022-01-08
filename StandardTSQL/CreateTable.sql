CREATE TABLE dbo.PurchaseOrderDetail  
(  
    PurchaseOrderID int NOT NULL  
    ,LineNumber smallint NOT NULL  
    ,ProductID int NULL  
    ,UnitPrice money NULL  
    ,OrderQty smallint NULL  
    ,ReceivedQty float NULL  
    ,RejectedQty float NULL  
    ,DueDate datetime NULL  
);  

Update SomeTable
set SomeDataCol = 'data', SomeotherCol = 'data'
where specialID =1324 

Insert Into dbo.sometable (firstdata,secondData)
Values('data','data')