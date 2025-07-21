/*
======================================================================
Create Database and Schemas
======================================================================
Script Purpose:
  This script creates a new database name 'DataWarehouse' after checking if it already exists.
	if the database exists, it is dropped and recreated. Additionally, the scriot sets up thress schemas
	within the database: 'bronze','silver','gold'.

WARNING:  
    Running this script will drop the entire 'DataWarehouse' database if it exists.
    All data in the database will be permantly deleted. Proceed with caution
    and ensure you have proper backups before running this script.
*/

USE master;
GO
--Drop and recreate the 'DataWarehouse' database
If EXISTS (SELECT 1 FROM SYS.databases WHERE name = 'DataWarehouse')
BEGIN
     ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	 DROP DATABASE DataWarehouse
END;
GO

--Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse; 
GO

--Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
Go

CREATE SCHEMA gold;
Go
