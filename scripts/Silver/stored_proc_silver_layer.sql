/*
=================================================================================================

Stored Procedure to load Silver layer

=================================================================================================

This stored procedure in Silver layer performs ETL on the integrated data through the Bronze layer
and store the processed data into the silver schema tables from the bronze schema tables

- This script Truncates Silver tables and Inserts clean and transformed data from Bronze layer into the Silver layer
- No parameters are required or delivered by the script

Execution: 
  - EXEC Silver.load_silver;

*/


CREATE OR ALTER PROCEDURE Silver.load_silver AS
BEGIN
      DECLARE @start_time DATETIME, @end_time DATETIME, @batch_start_time DATETIME, @batch_end_time DATETIME;
      BEGIN TRY
            SET @batch_start_time = GETDATE();  
            PRINT '================================================';
            PRINT 'Loading Silver Layer';
            PRINT '================================================';

		        PRINT '------------------------------------------------';
		        PRINT 'Loading CRM Tables';
		        PRINT '------------------------------------------------';
