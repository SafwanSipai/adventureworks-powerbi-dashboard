-- Cleaned FACT_InternetSales Table
SELECT [ProductKey]
      ,[OrderDateKey]
      ,[DueDateKey]
      ,[ShipDateKey]
      ,[CustomerKey]
      ,[SalesOrderNumber]
      ,[SalesAmount]
FROM [AdventureWorksDW2019].[dbo].[FactInternetSales]
WHERE LEFT(OrderDateKey, 4) >= YEAR(GETDATE()) - 4 --Brings only 2 past 2 years of data
ORDER BY OrderDateKey
