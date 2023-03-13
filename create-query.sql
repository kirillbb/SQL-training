CREATE DATABASE userDB;
-- DROP DATABASE userDB;

use userDB;

CREATE TABLE Users
(
    Id INT PRIMARY KEY,
    Name NVARCHAR(20),
    Age INT,
    Email NVARCHAR(30),
    Phone NVARCHAR(20),
    Salary MONEY
);
-- DROP TABLE Users;