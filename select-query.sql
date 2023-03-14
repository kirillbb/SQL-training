SELECT TOP (1000) [Id]
      ,[Name]
      ,[Age]
      ,[Email]
      ,[Phone]
      ,[Salary]
  FROM [userDB].[dbo].[Users]

  SELECT [Id]
        ,[Name] + ' / ' + [Email]  + ' ( ' + [Phone] + ' )'  as Contact
        ,[Salary] * 12 AS YearSalary
    FROM [userDB].[dbo].[Users]
    ORDER BY [YearSalary] DESC

SELECT DISTINCT [Name]
    INTO UniqueUsers
FROM [userDB].[dbo].[Users]

SELECT * 
    FROM UniqueUsers