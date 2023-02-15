DELETE FROM [Library].[dbo].[Catalog] WHERE ID = 2;

INSERT INTO [Library].[dbo].[Catalog] (Name, Author, Genre, Cost)
VALUES (N'Три поросёнка', N'Сергей михалков', N'Комедия', 9.600) 

UPDATE [Library].[dbo].[Catalog] set Name = N'Мертвые души', Author = N'Николай Гоголь' WHERE ID = 3;

SELECT TOP (1000) [ID]
      ,[Name]
      ,[Author]
      ,[Genre]
      ,[Cost]
  FROM Library.dbo.Catalog
  