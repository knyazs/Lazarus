-- PROVIDER
--
-- Cloud provider information
-- Example: Azure, AWS
CREATE TABLE [dbo].[Provider]
(
	[Id] SMALLINT NOT NULL PRIMARY KEY,
	[Name] VARCHAR(255) NOT NULL
)
