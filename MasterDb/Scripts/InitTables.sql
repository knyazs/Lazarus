
-- PROVIDER
MERGE [dbo].[Provider] AS tgt  
USING (
	SELECT 1 as Id, 'Azure' as [Name]
    -- UNION ALL
    -- SELECT 2, 'AWS'
) as src (Id, Name)  
ON (tgt.Id = src.Id)  
WHEN MATCHED THEN
    UPDATE SET [Name] = src.[Name]  
WHEN NOT MATCHED THEN  
    INSERT (Id, Name)  
    VALUES (src.Id, src.Name) ;