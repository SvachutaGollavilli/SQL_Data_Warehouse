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
