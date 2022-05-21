-- LOCATION
--
-- Geo location of a cloud data center
-- Example: East US, West Europe, Australia
CREATE TABLE [dbo].[Location]
(
	[Id] SMALLINT NOT NULL PRIMARY KEY,
	[ProviderId] SMALLINT NOT NULL,
	[Code] VARCHAR(100) NOT NULL,
	[Name] VARCHAR(255) NOT NULL,
	CONSTRAINT [FK_Location_to_Provider] FOREIGN KEY ([ProviderId]) REFERENCES [dbo].[Provider]([Id]),
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Provider specific geo-location code',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Location',
    @level2type = N'COLUMN',
    @level2name = N'Code'