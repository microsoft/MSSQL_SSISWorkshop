USE AdventureWorks2012
GO

--testing sproc execution
DECLARE @SalesYTD REAL 
EXEC Sales.uspGetTerritorySalesYTD   @CountryRegionCode='fr' /*US,CA,FR,DE,AU,GB*/
								   , @SalesYTD=@SalesYTD OUTPUT
SELECT @SalesYTD AS SalesYTD
GO