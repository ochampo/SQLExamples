/****** Script for SelectTopNRows command from SSMS  ******/
--before the function 
SELECT TOP (1000) 
	   [VehicleTemperatureID]
      ,[Temperature] as Celsius
	  ,[Temperature]  * 1.8 + 32 as FarenHeit
FROM [WideWorldImporters].[Warehouse].[VehicleTemperatures] WITH (SNAPSHOT)

--create function warehouse.ToFarenheit(@Celsius decimal(10,2))
--returns decimal(10,2)
--as 
--begin
--	declare @farenheit decimal (10,2);
--	set @farenheit = (@Celsius * 1.8 + 32);
--	return @farenheit
--	end;


	SELECT TOP (1000) 
	   [VehicleTemperatureID]
      ,[Temperature] as Celsius
	  ,[Warehouse].[ToFarenheit](Temperature) as Farenheit
FROM [WideWorldImporters].[Warehouse].[VehicleTemperatures] WITH (SNAPSHOT)