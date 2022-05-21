-- STORAGE
--
-- Storage service
-- 
CREATE TABLE [dbo].[Storage]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[LocationId] SMALLINT NOT NULL,
	[Name] VARCHAR(100) NOT NULL,
	CONSTRAINT [FK_Storage_to_Location] FOREIGN KEY ([LocationId]) REFERENCES [dbo].[Location]([Id]),
)