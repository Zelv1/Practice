USE master;
GO

-- Переводим БД в single-user mode
ALTER DATABASE Library
SET SINGLE_USER WITH ROLLBACK IMMEDIATE
GO

-- Меняем кодировку COLLATION
ALTER DATABASE Library
COLLATE Cyrillic_General_CI_AS ;
GO

-- Переводим БД обратно в multi-user mode
ALTER DATABASE Library
SET MULTI_USER WITH ROLLBACK IMMEDIATE;
GO  
 
--Проверяем настройки COLLATION.
SELECT name, collation_name
FROM sys.databases
WHERE name = 'Library';
GO

DELETE FROM [Library].[dbo].[Catalog] WHERE ID = 2;

INSERT INTO [Library].[dbo].[Catalog] (Name, Author, Genre, Cost)
VALUES ('Три поросёнка', 'Сергей михалков', 'Комедия', 9.600) 

UPDATE [Library].[dbo].[Catalog] set Name = 'Мертвые души', Author = 'Николай Гоголь' WHERE ID = 3;

SELECT TOP (1000) [ID]
      ,[Name]
      ,[Author]
      ,[Genre]
      ,[Cost]
  FROM Library.dbo.Catalog
