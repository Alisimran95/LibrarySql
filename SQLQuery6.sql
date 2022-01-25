--CREATE DATABASE LibraryDatabase
--use LibraryDatabase

--Create Table Genres(
--	Id int primary key identity,
--	Genre nvarchar(50) not null,
--)

--Insert Into Genres(Genre)
--Values ('Realistic'),
--		('Mystery'),
--		('Fantasy'),
--		('Poetry'),
--		('Science-Fiction'),
--		('Historical-Fiction')

--Create Table Authors(
--	Id int primary key identity,
--	FirstName nvarchar(50) not null,
--	LastName nvarchar(50) not null,
--	GenreId int references Genres(Id)
--)

--Insert Into Authors(FirstName,LastName,GenreId)
--Values ('David','Mitchell',5),
--		('Frans','Kafka',3),
--		('Fyodr','Dostayevsky',1),
--		('Charles','Bukowski',4),
--		('Madeline','Miller',6)

--Create Table Books(
--	Id int primary key identity,
--	Name nvarchar(50) not null,
--	Price decimal(10,2),
--	PublishedDate nvarchar(50) ,
--	GenreId int references Genres(Id),
--	AuthorId int references Authors(Id)
--)

--Insert Into Books(Name,Price,PublishedDate,GenreId,AuthorId)
--Values ('Cloud Atlas',30,'2004',5,1),
--		('Metamorphosis',20,'1915',3,2),
--		('The Song of Achilles',40,'2011',6,5),
--		('In the Shadow of the Rose',15,'1991',4,4),
--		('Crime and Punishment',13,'1866',1,3)

--Create Table Customers(
--	Id int primary key identity,
--	FullName nvarchar(100) not null,
--	Country nvarchar(50) not null,
--	PhoneNumber nvarchar(50),
--	Comment nvarchar(100),
--	BookId int references Books(Id)
--)

--Insert Into Customers(FullName,Country,PhoneNumber,Comment,BookId)
--Values('Adam Smith','USA',null,'nice',1),
--	  ('Igor Alexander ','Russia',null,'хороший',5),
--	  ('Levent Demir', 'Turkey',null,'muhteşem',2),
--	  ('Joao Santos', 'Brasil',null,'muito bom',3)


--Select * From Authors
--Inner Join Genres
--ON Authors.GenreId = Genres.Id

--Select * From Books
--Inner Join Authors
--ON Books.AuthorId  = Authors.Id
--Inner Join Genres
--ON Books.GenreId = Genres.Id

--Select * From Customers
--Inner Join Books
--ON Customers.BookId = Books.Id
--Inner Join Authors
--ON Books.AuthorId  = Authors.Id
--Inner Join Genres
--ON Authors.GenreId = Genres.Id