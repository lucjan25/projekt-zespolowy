SELECT TOP (1000) [dbo].[books].[Title]
      ,[dbo].[authors].[Author]
  FROM [dbo].[books]
  JOIN [dbo].[authorbook]
    ON [dbo].[books].[BookId] = [dbo].[authorbook].[BookId]
  JOIN [dbo].[authors]
    ON [dbo].[authorbook].[AuthorId] = [dbo].[authors].[AuthorId]