-- LOCATION
--
-- Geo location of data center
-- Example: East US, West Europe, Australia
CREATE TABLE [dbo].[Location]
(
	[Id] SMALLINT NOT NULL PRIMARY KEY,
	[ProviderId] SMALLINT NOT NULL,
	[Code] VARCHAR(100) NOT NULL,
	[Name] VARCHAR(255) NOT NULL,
	CONSTRAINT [FK_Location_to_Provider] FOREIGN KEY ([ProviderId]) REFERENCES [dbo].[Provider]([Id]),
)
