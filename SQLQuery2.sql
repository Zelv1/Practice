ALTER DATABASE Library
COLLATE Cyrillic_General_CI_AS ;
DELETE FROM [Library].[dbo].[Catalog] WHERE ID = 2;

INSERT INTO [Library].[dbo].[Catalog] (Name, Author, Genre, Cost)
VALUES ('��� ��������', '������ ��������', '�������', 9.600) 

UPDATE [Library].[dbo].[Catalog] set Name = '������� ����', Author = '������� ������' WHERE ID = 3;

SELECT TOP (1000) [ID]
      ,[Name]
      ,[Author]
      ,[Genre]
      ,[Cost]
  FROM Library.dbo.Catalog
