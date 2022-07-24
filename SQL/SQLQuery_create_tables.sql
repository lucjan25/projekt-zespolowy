use [Projekt_zespolowy];

DROP TABLE IF EXISTS authorbook;
DROP TABLE IF EXISTS tagbook;
DROP TABLE IF EXISTS favourites;

DROP TABLE IF EXISTS authors;
CREATE TABLE authors (AuthorId int NOT NULL IDENTITY PRIMARY KEY, Author varchar(120) NOT NULL)

DROP TABLE IF EXISTS tags;
CREATE TABLE tags (TagId int NOT NULL IDENTITY PRIMARY KEY, Tag varchar(64) NOT NULL)

DROP TABLE IF EXISTS users;
CREATE TABLE users (UserId int NOT NULL IDENTITY PRIMARY KEY, Login nvarchar(128) NOT NULL, Haslo nvarchar(255) NOT NULL, Admin bit NOT NULL)

DROP TABLE IF EXISTS books;
CREATE TABLE books 
(BookId int NOT NULL IDENTITY PRIMARY KEY,
Title varchar(182) NOT NULL,
ISBN varchar(30) NOT NULL,
URL varchar(262) NOT NULL,
X float(53) NOT NULL,
Y float(53) NOT NULL,
Z float(53) NOT NULL);

CREATE TABLE authorbook
(
  AuthorId int NOT NULL ,
  BookId int NOT NULL,
  PRIMARY KEY (AuthorId, BookId),
  FOREIGN KEY(AuthorId) REFERENCES authors(AuthorId),
  FOREIGN KEY(BookId) REFERENCES books(BookId)
);

CREATE TABLE tagbook
(
  TagId int NOT NULL ,
  BookId int NOT NULL,
  PRIMARY KEY (TagId, BookId),
  FOREIGN KEY(TagId) REFERENCES tags(TagId),
  FOREIGN KEY(BookId) REFERENCES books(BookId)
);

CREATE TABLE favourites
(
  UserId int NOT NULL ,
  BookId int NOT NULL,
  PRIMARY KEY (UserId, BookId),
  FOREIGN KEY(UserId) REFERENCES users(UserId),
  FOREIGN KEY(BookId) REFERENCES books(BookId)
);
