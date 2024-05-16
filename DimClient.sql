-- Clean DimCustomer Table
SELECT 
  C.CustomerKey, 
  C.FirstName, 
  C.LastName, 
  C.FirstName + ' ' + C.LastName AS FullName, 
  CASE C.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender, 
  G.City AS CustomerCity -- Joined from DimGeography on GeographyKey
FROM 
  [AdventureWorksDW2022].[dbo].[DimCustomer] AS C 
  LEFT JOIN DimGeography AS G ON C.GeographyKey = G.GeographyKey 
ORDER by 
  C.CustomerKey -- List ordered by CustomerKey
