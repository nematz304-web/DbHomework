USE [FirstTest]
GO
lINSERT INTO [dbo].[user]
           ([username]
           ,[password]
           ,[first_name]
           ,[last_name]
           ,[email]
           ,[phone_number]
           ,[is_deleted]
           ,[sex]
           ,[is_admin]
           ,[created_at]
           ,[last_login]
           ,[updated_at]
           ,[delete_date_time])
     VALUES
           ('sara_kh',
		    'S@ra1403',
		    'Sara',
		    'Khademi',
		    'sara.khademi@example.com',
		    '09112223344',
		    0,
		    1,
		    0,
		    '2024-07-10 09:30:00',
		    '2024-03-15 14:20:00',
		    '2024-07-10 09:30:00',
		    NULL)
GO


UPDATE [dbo].[user]
   SET [email] = 'mahdi.newmail@example.com',
       [updated_at] = '2025-10-01 18:45:00',
	   [phone_number] = '09187776655'
 WHERE [username] = 'mahdi2023'
GO


DELETE FROM [dbo].[user]
      WHERE [phone_number] = '09225556677' AND [is_deleted] = 1
GO


SELECT [username],
       [id],
       [first_name],
       [last_name],
       [email],
       [phone_number],
       [is_admin],
       [sex],
       [is_deleted],
       [created_at],
       [last_login],
       [updated_at]
  FROM [dbo].[user]
  WHERE [last_name] <> 'Ahmadi'
  ORDER BY [username] DESC
GO
