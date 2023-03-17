UPDATE [userDB].[dbo].[Users]
SET [Salary] = [Salary] * 1.2
WHERE [Salary] <= 600;


UPDATE [userDB].[dbo].[Users]
SET [Salary] = [Salary] * 1.5
WHERE [Name] = 'Mary' OR [Salary] < 400;