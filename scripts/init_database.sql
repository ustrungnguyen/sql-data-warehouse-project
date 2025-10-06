USE master;

GO

IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
  BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;

GO

-- Creating the database
CREATE DATABASE DataWarehouse;

GO

USE DataWarehouse;

GO

CREATE SCHEMA bronze;

GO


CREATE SCHEMA silver;

GO

CREATE SCHEMA gold;
