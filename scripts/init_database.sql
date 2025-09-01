/*

=======================================================================================================================

 Create database DataWarehouse. 

 =======================================================================================================================

 This script creates database named 'DataWarehouse'. If the ddatabase already exists then this script set the database 
 to single user and rollback all the uncommited changes, open transactions and Active Queries and then drop the database to create a new one. 

 Warnings;
    Running this script will drop the entire 'DataWarehouse' database if it exists. 
    All data in the database will be permanently deleted. 
    Proceed with caution and ensure you have proper backups before running this script.


*/

USE master;
GO


--Create the database 'DataWarehouse'. (Drop if already exists and recreate)

IF EXISTS (SELECT 1 FROM sys.databases WHERE name == 'DataWarehouse')
BEGIN
    --Disconnect all other users except the main user and immediately rollback uncommited changes, open transactions and Active Queries
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE; 
    --Drop database after rollback
    DROP DATABASE DataWarehouse;
END;


--Create new database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO;

--Create Schemas
CREATE SCHEMA Bronze;
GO;

CREATE SCHEMA Silver;
GO;

CREATE SCHEMA Gold;
GO;
