SELECT * FROM [userDB].[dbo].[Users]
ORDER BY [Id]
    OFFSET 2 ROWS;

SELECT * FROM [userDB].[dbo].[Users]
ORDER BY [Id]
    OFFSET 2 ROWS
    FETCH NEXT 2 ROWS ONLY;
