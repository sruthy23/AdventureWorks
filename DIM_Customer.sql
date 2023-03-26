-- Cleaned DIM Customers Table
SELECT c.CustomerKey AS CustomerKey
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      ,c.FirstName AS [First Name]
      --,[MiddleName]
      ,c.LastName AS [Last Name]
	  ,c.FirstName+' '+c.LastName AS [Full Name]
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      , CASE c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      ,c.DateFirstPurchase AS DateFirstPurchase
      --,[CommuteDistance]
	  --from geography table
	  ,g.City AS [Customer City]
  FROM [dbo].[DimCustomer] AS c
  LEFT JOIN [dbo].[DimGeography] AS g ON c.GeographyKey = g.GeographyKey
  ORDER BY CustomerKey ASC;