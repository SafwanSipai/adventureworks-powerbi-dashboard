-- Cleaned DIM_Product Table
SELECT TOP (1000) [ProductKey]
      ,[ProductAlternateKey]
	  ,p.EnglishProductName AS [Product Name]
	  ,pc.EnglishProductCategoryName AS [Product Category]
      ,ps.EnglishProductSubcategoryName AS [Product SubCategory]
      ,p.Color AS [Product Color]
      ,p.Size AS [Product Size]
      ,p.ProductLine AS [Product Line]
      ,p.ModelName AS [Product Model Name]
      ,p.EnglishDescription AS [Product Description]
      ,ISNULL (p.Status, 'Outdated') AS [Product Status]
FROM 
  [AdventureWorksDW2019].[dbo].[DimProduct] AS p
  LEFT JOIN [dbo].[DimProductSubcategory] AS ps ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey
  LEFT JOIN [dbo].[DimProductCategory] AS pc ON ps.ProductCategoryKey = pc.ProductCategoryKey
ORDER BY p.ProductKey