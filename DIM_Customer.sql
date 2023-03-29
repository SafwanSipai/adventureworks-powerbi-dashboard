-- Cleaned DIM_Customer Table

SELECT TOP (1000) 
	   c.CustomerKey AS CustomerKey
      ,c.FirstName AS [First Name]
      ,c.LastName AS [Last Name]
	  ,c.FirstName + ' ' + c.LastName AS [Full Name]
      ,CASE c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender
      ,c.DateFirstPurchase
	  ,g.city AS [Customer City]
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] AS c
  LEFT JOIN [dbo].[DimGeography] AS g on g.GeographyKey = c.GeographyKey
ORDER BY 
c.CustomerKey ASC