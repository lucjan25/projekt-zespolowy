SELECT [dbo].[books].[Title]
      ,[dbo].[authors].[Author]
	    ,[dbo].[books].[ISBN]
	  
  FROM [dbo].[users] 
  JOIN [dbo].[favourites]
    ON [dbo].[users].[UserId] = [dbo].[favourites].[UserId]
  RIGHT JOIN [dbo].[books]
    ON [dbo].[favourites].[BookId] = [dbo].[books].[BookId]
  RIGHT JOIN [dbo].[authorbook]	
    ON [dbo].[books].[BookId] = [dbo].[authorbook].[BookId]
  RIGHT JOIN [dbo].[authors]
    ON [dbo].[authorbook].[AuthorId] = [dbo].[authors].[AuthorId]
  WHERE [dbo].[users].[UserId] = "ID Zalogowanego, skądś se trzeba wziąć wcześniej najlepiej"