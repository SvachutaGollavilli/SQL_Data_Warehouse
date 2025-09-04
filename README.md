# SQL_Data_Warehouse
Building a model Data Warehouse using SQL Server, including ETL process, data modeling and analytics.

The objective is to demonstrate a comprehensive data warehousing and analytics solution from building a data warehouse to actionable insights. It is built to highlight industry best practices in data engineering and analytics.

## Building the Data Warehouse

### Objective
Develop a modern data warehouse using SQL Server to consolidate sales data, enabling analytical reporting and informed decision-making.

### Specifications

- **Data Sources** : Import data from two source systems (ERP and CRM) provided as CSV files.
- **Data Quality** : Cleanse and resolve data quality issues prior to analysis.
- **Integration** : Combine both sources into a single, user-friendly data model designed for analytical queries.
- **Scope** : Focus on the latest dataset only; historization of data is not required.
- **Documentation** : Provide clear documentation of the data model to support both business stakeholders and analytics teams.


## Architecture

The architecture implemented to build the datawarehouse is the **Medallion** architecture with Bronze, Silver and Gold layers serving different purposes respectively.

### Implementation

|   | Bronze Layer | Silver Layer | Gold Layer |
|----------|----------|----------|----------|
|  Definition | Raw unprocessed data as is from sources   | Clean & Standardized data   | Business ready data|
| Objective | Tracebility & debugging    | Intermediate layer, Prepare data for analysis    | Provide data to be cosumed for reporting and analysis|
|Object Type| Tables   | Tables     | Views|
| Load Method | Full Load (Truncate and Insert)   | Full Load (Truncate and Insert)    | None(No Physical Tables) |
| Data Transformation | None(Raw Data Integration from different sources)   | - Cleaning -Standardisation -Normalisation -Derived Columns -Enrichment     | -Integration -Aggregation -Business Logic and Rules |
| Target Audience | Data Engineers  | Data Engineers and Analysts     | Business Users, Data Scientists, ML Models, Analysts|

The Data Modeling is implemented in the final Gold Layer of the architecture with **Star Schema**, **Aggregated Object**, and **Flat Tables**.

### Naming Conventions

We are using the snake case (all lowercase charecters seperated by '_' for better readability) to name the tables in 
the Bronze, Silver and Gold layers. The sql script files for DDL, DML are also named using the same convention. This makes it easier for the user to understand.
