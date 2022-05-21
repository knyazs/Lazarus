-- DATASET
--
-- Contains information about datasets
--
CREATE TABLE [dbo].[Dataset]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[DomainId] INT NOT NULL,
	[StorageId] INT NOT NULL,
	[Path] VARCHAR(8000) NOT NULL,		
	[Name] VARCHAR(100) NOT NULL,		
	[Structure] NVARCHAR(MAX) NULL,		
    CONSTRAINT [FK_Dataset_to_Domain] FOREIGN KEY ([DomainId]) REFERENCES [dbo].[Domain]([Id]), 
	CONSTRAINT [FK_Dataset_to_Storage] FOREIGN KEY ([StorageId]) REFERENCES [dbo].[Storage]([Id]),
)

GO

EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Physical path of the file in storage',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Dataset',
    @level2type = N'COLUMN',
    @level2name = N'Path'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Logical and storage file name',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Dataset',
    @level2type = N'COLUMN',
    @level2name = N'Name'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'File structure (column names and types, JSON)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Dataset',
    @level2type = N'COLUMN',
    @level2name = N'Structure'