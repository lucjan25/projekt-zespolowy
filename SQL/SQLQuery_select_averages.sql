SELECT Avg(X) AS AVGX, Avg(Y) AS AVGY, Avg(Z) AS AVGY FROM [dbo].books 
  JOIN [dbo].favourites
    ON [dbo].books.BookId = [dbo].favourites.BookId
  JOIN [dbo].users
    ON [dbo].favourites.UserId = [dbo].users.UserId