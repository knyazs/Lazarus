-- LOCATION
--
-- Geo location of data center
CREATE TABLE [dbo].[Location]
(
	[Id] SMALLINT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[Code] VARCHAR(100) NOT NULL,
	[Name] VARCHAR(255) NOT NULL,
)
