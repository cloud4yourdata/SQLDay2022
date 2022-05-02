SELECT  * FROM vwFactSalesOrderDetail 


CREATE EXTERNAL TABLE FactSalesOrderDetail
WITH (
    LOCATION = '/analytics_zone/DWHS/DWHDLTDemo/tables/ExtFactSalesOrderDetail/Version=1',
    DATA_SOURCE = DataLake,  
    FILE_FORMAT = PARQUET_FORMAT
)  
AS
SELECT * FROM FactSalesOrderDetail
--REFRESH
DROP EXTERNAL TABLE FactSalesOrderDetail;
CREATE EXTERNAL TABLE FactSalesOrderDetail
WITH (
    LOCATION = '/analytics_zone/DWHS/DWHDLTDemo/tables/ExtFactSalesOrderDetail/Version=2',
    DATA_SOURCE = DataLake,  
    FILE_FORMAT = PARQUET_FORMAT
)  
AS
SELECT * FROM vwFactSalesOrderDetail
--
SELECT * FROM FactSalesOrderDetail