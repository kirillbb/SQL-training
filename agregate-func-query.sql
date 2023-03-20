SELECT COUNT(*) as CountUser FROM [userDB].[dbo].[Users]

SELECT AVG([Salary]) as AvgSalaty FROM [userDB].[dbo].[Users]

SELECT MIN([Salary]) as MinSalary FROM [userDB].[dbo].[Users]

SELECT MAX([Salary]) as MaxSalary FROM [userDB].[dbo].[Users]

SELECT SUM([Salary]) as TotalSalary FROM [userDB].[dbo].[Users]

SELECT COUNT(*) as CountUsers,
    SUM([Salary]) as TotalSalary,
    MIN([Salary]) as MinSalary,
    MAX([Salary]) as MaxSalary,
    AVG([Salary]) as AvgSalaty
FROM [userDB].[dbo].[Users]