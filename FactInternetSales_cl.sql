-- Clean FactInternetSales Table
SELECT 
  ProductKey, 
  OrderDateKey AS OrderDate, 
  DueDateKey AS DueDate, 
  ShipDateKey AS ShipDate, 
  CustomerKey, 
  SalesOrderNumber AS OrderNumber, 
  SalesAmount 
FROM 
  [AdventureWorksDW2022].[dbo].[FactInternetSales] 
WHERE 
  LEFT (OrderDateKey, 4) >= YEAR(GETDATE()) -2 
  --Ensuring that we always bring 2 years from date of data extraction.
ORDER BY 
  OrderDateKey ASC