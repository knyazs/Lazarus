-- DATASET
--
-- Contains information about datasets
--
CREATE TABLE [dbo].[Dataset]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[DomainId] INT NOT NULL,
	[LocationId] SMALLINT NOT NULL,
	[Name] VARCHAR(100) NOT NULL, 
    CONSTRAINT [FK_Dataset_to_Domain] FOREIGN KEY ([DomainId]) REFERENCES [dbo].[Domain]([Id]), 
    CONSTRAINT [FK_Dataset_to_Location] FOREIGN KEY ([LocationId]) REFERENCES [dbo].[Location]([Id]),
)
