-- Clean DimProduct Table
SELECT 
  P.ProductKey, 
  P.ProductAlternateKey AS ItemCode, 
  P.EnglishProductName AS Name, 
  C.EnglishProductCategoryName AS Category, 
  -- Joined from DimProductCategory.
  S.EnglishProductSubcategoryName AS SubCategory, 
  -- Joined from DimProductSubcategory
  P.Color, 
  P.Size, 
  P.ProductLine, 
  P.ModelName, 
  P.EnglishDescription AS ProductDescription, 
  ISNULL (P.Status, 'Discontinued') AS ProductStatus -- Confirmed Discontinued status using Date Values in EndDate column
FROM 
  [AdventureWorksDW2022].[dbo].[DimProduct] AS P 
  LEFT JOIN DimProductSubcategory AS S ON P.ProductSubcategoryKey = S.ProductSubcategoryKey 
  LEFT JOIN DimProductCategory AS C ON S.ProductCategoryKey = C.ProductCategoryKey
