USE AdventureWorks2016 --You may need to change DB Name accordingly.
GO

IF OBJECT_ID('sales.uspGetTerritorySalesYTD') IS NOT NULL
    DROP PROCEDURE Sales.uspGetTerritorySalesYTD; 
GO

CREATE PROCEDURE Sales.uspGetTerritorySalesYTD
  @CountryRegionCode VARCHAR(50)
, @SalesYTD REAL OUTPUT
AS
BEGIN

    SELECT @SalesYTD=SUM(TotalDue)
      FROM Sales.SalesOrderHeader soh 
      JOIN Sales.SalesTerritory t on soh.TerritoryId=t.TerritoryId
     WHERE t.CountryRegionCode=@CountryRegionCode

END
GO