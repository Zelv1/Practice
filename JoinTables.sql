USE Library
SELECT 
	People.NameAndSurname
	, Catalog.Name
	, Catalog.Cost
FROM People
JOIN PersonAndBook ON People.ID = PersonAndBook.ID_Person
JOIN Catalog ON PersonAndBook.ID_Book = Catalog.ID