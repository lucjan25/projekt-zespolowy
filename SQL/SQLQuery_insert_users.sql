use [Projekt_zespolowy];

SET IDENTITY_INSERT users ON
INSERT INTO users (UserId, Login, Haslo, Admin) VALUES (1,'admin', HASHBYTES('SHA2_256', CONVERT(NVARCHAR(255),'123456')), 1);
INSERT INTO users (UserId, Login, Haslo, Admin) VALUES (2,'Krystian', HASHBYTES('SHA2_256', CONVERT(NVARCHAR(255),'1234')), 0);
SET IDENTITY_INSERT users OFF 