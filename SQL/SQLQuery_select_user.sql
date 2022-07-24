SELECT [dbo].[users].[UserId]
      ,[dbo].[users].[Admin]
  FROM [dbo].[users] 
  WHERE [dbo].[users].Login = 'admin'
  AND [dbo].[users].Haslo = HASHBYTES('SHA2_256', CONVERT(NVARCHAR(255),'123456'))