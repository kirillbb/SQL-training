SELECT * FROM [userDB].[dbo].[Users]
WHERE [Age] > 22 AND [Salary] > 400;

SELECT * FROM [userDB].[dbo].[Users]
WHERE [Email] = 'carl@doe.com';

-- 'NOT' == '<>'
SELECT * FROM [userDB].[dbo].[Users]
WHERE [Age] <> 22;

SELECT * FROM [userDB].[dbo].[Users]
WHERE [Name] IN ('Carl', 'John');

SELECT * FROM [userDB].[dbo].[Users]
WHERE [Age] BETWEEN 20 AND 30;

