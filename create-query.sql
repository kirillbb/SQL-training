CREATE DATABASE userDB;
-- DROP DATABASE userDB;

use userDB;

CREATE TABLE Users
(
    Id INT PRIMARY KEY IDENTITY,
    Name NVARCHAR(20) NOT NULL,
    Age INT,
    Email NVARCHAR(30) UNIQUE,
    Phone NVARCHAR(20) UNIQUE,
    Salary MONEY
);
-- DROP TABLE Users;