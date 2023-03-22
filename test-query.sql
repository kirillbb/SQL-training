use userDB;
CREATE TABLE Guests
(
    GuestID INT NOT NULL PRIMARY KEY,
    CompanyID int NULL,
    Name [NVARCHAR](50) NOT NULL
);
GO

CREATE TABLE Companies
(
    CompanyID INT NOT NULL PRIMARY KEY,
    CompanyName [NVARCHAR](50) NOT NULL
);
GO

INSERT INTO [userDB].[dbo].[Companies] ( [CompanyID], [CompanyName] )
VALUES
    (1, 'ExpertSolution'),
    (2,  'ServioSoft' ),
    (3,  'Apple' )
GO

INSERT INTO [userDB].[dbo].[Guests] ( [GuestID], [CompanyID], [Name] )
VALUES
    (1, 1, 'Іван Василів'),
    (2, 1, 'Петро Симонович'),
    (3, 2, 'Василь Пупкін'),
    (4, 3, 'Сергій Іванов'),
    (5, 2, 'Роман Пушко'),
    (6, 1, 'Станіслав Мотужко'),
    (7, null, 'Рустам Алекжі')
GO

SELECT G.Name, C. CompanyName
From [userDB].[dbo].[Guests] as G
Left Join [userDB].[dbo].[Companies] as C on G.CompanyID=C.CompanyID

SELECT G.Name, C. CompanyName
From [userDB].[dbo].[Companies] as C
Left Join [userDB].[dbo].[Guests] G on G.CompanyID=C.CompanyID

SELECT 
    [GuestID],
    [Name]
FROM [userDB].[dbo].[Guests]
WHERE [CompanyID] = 1

SELECT
    C.[CompanyName],
    COUNT(*) AS [GuestsCount]
FROM [userDB].[dbo].[Guests] AS G
INNER JOIN [userDB].[dbo].[Companies] as C ON G.CompanyID = C.CompanyID
GROUP BY C.[CompanyName]
ORDER BY [GuestsCount] DESC

use userDB;
SELECT 
    c.CompanyName, 
    RIGHT(g.Name, LEN(g.Name) - CHARINDEX(' ', g.Name)) as LastName, 
    LEFT(g.Name, 1) as FirstInitial
FROM Companies c
JOIN Guests g ON c.CompanyID = g.CompanyID
WHERE g.GuestID IN (
    SELECT MIN(GuestID)
    FROM Guests
    GROUP BY CompanyID
)