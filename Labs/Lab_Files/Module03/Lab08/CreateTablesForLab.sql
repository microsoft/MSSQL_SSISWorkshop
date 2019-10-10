IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'MrData')
BEGIN
    CREATE TABLE dbo.MrData(
	    BusinessEntityID int NOT NULL,
	    NameStyle dbo.NameStyle NOT NULL,
	    Title nvarchar(8) NULL,
	    FullName nvarchar (255) NULL,
	    Suffix nvarchar(10) NULL
    )
END
ELSE
    TRUNCATE TABLE dbo.MrData
GO

IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'MrsData')
BEGIN
    CREATE TABLE dbo.MrsData(
	    BusinessEntityID int NOT NULL,
	    NameStyle dbo.NameStyle NOT NULL,
	    Title nvarchar(8) NULL,
	    FullName nvarchar (255) NULL,
	    Suffix nvarchar(10) NULL
    )
END
ELSE
    TRUNCATE TABLE dbo.MrsData
GO