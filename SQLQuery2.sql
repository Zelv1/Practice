DELETE FROM [Library].[dbo].[Catalog] WHERE ID = 2;

INSERT INTO [Library].[dbo].[Catalog] (Name, Author, Genre, Cost)
VALUES (N'��� ��p�����', N'��p��� ��������', N'�������', 9.600) 

UPDATE [Library].[dbo].[Catalog] set Name = N'��p���� ����', Author = N'H������ ������' WHERE ID = 3;

SELECT TOP (1000) [ID]
      ,[Name]
      ,[Author]
      ,[Genre]
      ,[Cost]
  FROM Library.dbo.Catalog
  