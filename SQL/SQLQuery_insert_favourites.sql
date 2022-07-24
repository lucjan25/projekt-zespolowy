IF NOT EXISTS (SELECT BookId, UserId FROM [dbo].favourites WHERE BookId=1 AND UserId = 1)
BEGIN
    INSERT INTO [dbo].favourites (BookId, UserId) VALUES (1,1);
END;