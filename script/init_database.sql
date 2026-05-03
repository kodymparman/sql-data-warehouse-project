/*
Create Database and Schemas

Script Purpose:
  This script creates a new database after checking if it already exists. If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas.

Warning : 
  Running this script will drop the entire datawarehouse database if it exists. All data in the db will be permanently deleted. Proceed with caution!
*/


-- Create Database 'DataWarehouse'


Use master;
GO

--Drop and recreate the 'DatWarehouse' database
IF EXISTS(SELECT 1 FROM sys.databases WHERE name ='DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END
GO

CREATE DATABASE DataWarehouse;
GO
USE DataWarehouse
Go
CREATE SCHEMA bronze
GO
CREATE SCHEMA silver
GO
CREATE SCHEMA gold
GO
