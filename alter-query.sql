-- if 'Users' is not empty
ALTER TABLE Users
    ADD Company VARCHAR(20) NOT NULL DEFAULT 'default value';

-- if 'Users' is empty
ALTER TABLE Users
    ADD Company VARCHAR(20) NOT NULL;

ALTER TABLE Users
    DROP COLUMN Company;

ALTER TABLE Users
    ADD CHECK (Age > 0 AND Age < 111);

-- change data type of column
ALTER TABLE Users
    ALTER COLUMN FirstName NVARCHAR(200);

ALTER TABLE Orders
    ADD FOREIGN KEY(CustomerId) REFERENCES Customers(Id);

ALTER TABLE Orders
    ADD PRIMARY KEY (Id);