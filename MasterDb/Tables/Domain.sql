-- DOMAIN
--
-- This table contains information about registered business domains
-- Examples: somecompany.com, acme.com.au
--
CREATE TABLE [dbo].[Domain]
(
	[Id] INT NOT NULL PRIMARY KEY,
	[Name] VARCHAR(200) NOT NULL
)
