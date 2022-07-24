SELECT [dbo].books.BookId
      ,[dbo].authors.Author
      ,[dbo].books.Title
      ,[dbo].books.ISBN
      ,STRING_AGG([dbo].tags.Tag, ', ') AS Tags
  FROM [dbo].books
  JOIN [dbo].tagbook
    ON [dbo].tagbook.BookId = [dbo].books.BookId
  JOIN [dbo].authorbook
    ON [dbo].books.BookId = [dbo].authorbook.BookId
  JOIN [dbo].authors
    ON [dbo].authorbook.AuthorId = dbo.authors.AuthorId
  JOIN [dbo].tags
    ON [dbo].tags.TagId = [dbo].tagbook.TagId
GROUP BY [dbo].books.Title,[dbo].authors.Author,[dbo].books.ISBN, [dbo].books.BookId;