USE BikeStores;
GO

-- Creats roles if they don't exist
IF NOT EXISTS (SELECT 1 FROM sys.database_principals WHERE name = 'GeneralUser' AND type = 'R')
CREATE ROLE GeneralUser;

IF NOT EXISTS (SELECT 1 FROM sys.database_principals WHERE name = 'Salesperson' AND type = 'R')
CREATE ROLE Salesperson;
GO

-- permissions for Salesperson role
GRANT SELECT ON Sales.Staffs TO Salesperson;

GRANT SELECT, INSERT, UPDATE, DELETE ON Sales.Customers TO Salesperson;

GRANT SELECT, INSERT, UPDATE, DELETE ON Sales.Customer_Credit_Cards TO Salesperson;
GO

-- permissions for GeneralUser role
GRANT SELECT ON Sales.Customers TO GeneralUser;

GRANT SELECT ON Sales.Customer_Credit_Cards TO GeneralUser;
GO
