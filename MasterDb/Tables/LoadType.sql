-- LOAD TYPE
--
-- This table contains information about supported load types
-- Example: upsert, delete, reload
--
CREATE TABLE [dbo].[LoadType]
(
	[Id] TINYINT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[Name] VARCHAR(100) NOT NULL 
)
