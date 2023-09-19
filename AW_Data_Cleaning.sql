
-----------------------------------------------SALES DATA-----------------------------------------------------

-- Converting the date columns to date type (from nvarchar), and renaming the columns

SELECT 
	CONVERT(DATE, OrderDateKey) AS OrderDateKey,
	CONVERT(DATE, DueDateKey) AS DueDateKey,
	CONVERT(DATE, ShipDateKey) AS ShipDateKey
FROM [Adventure_Works].[dbo].[Sales_data]


-- Creating new columns with type Date (and invariably renaming the columns)

ALTER TABLE Sales_data
ADD OrderDate Date;

ALTER TABLE Sales_data
ADD DueDate Date;

ALTER TABLE Sales_data
ADD ShipDate Date;


UPDATE Sales_data
SET OrderDate = CONVERT(DATE, OrderDateKey),
	DueDate = CONVERT(DATE, DueDateKey),
	ShipDate = CONVERT(DATE, ShipDateKey)


-- Removing the redundant date fields (OrderDateKey, DueDateKey, ShipDateKey)

ALTER TABLE Sales_data
DROP COLUMN OrderDateKey, DueDateKey, ShipDateKey


-- Replacing the NULL values with corresponding dates in the ShipDateKey column 

SELECT 
	ShipDate,
	ISNULL(ShipDate, DATEADD(DAY, 7, OrderDate)) AS Replaced_NULL_values
FROM [Adventure_Works].[dbo].[Sales_data] 
ORDER BY 1;

UPDATE Sales_data
SET ShipDate = ISNULL(ShipDate, DATEADD(DAY, 7, OrderDate))



-----------------------------------------------SALES TERRITORY------------------------------------------------

-- Remove inconsistent data from the table

DELETE
FROM Sales_Territory_data
WHERE SalesTerritoryID = 11


-- Rename the Group column as Continent

EXEC sys.sp_rename
@objname = N'dbo.Sales_Territory_data.Group',
@newname = 'Continent',
@objtype = 'COLUMN'



-----------------------------------------------PRODUCT DATA----------------------------------------------------

-- Replace NA with Not Specified in the Color column


SELECT 
	REPLACE(Color, 'NA', 'Not Specified') AS Replaced,
	COUNT(*) AS Count
FROM Product_data

UPDATE Product_data
SET Color = REPLACE(Color, 'NA', 'Not Specified')

-- Remove values that will skew the analysis

DELETE
FROM Product_data
WHERE ProductID IN (226, 227, 244)



-----------------------------------------------SALES ORDER DATA------------------------------------------------


-- Merge the Sales_Order_data table with Sales_data 
	
ALTER TABLE Sales_data
ADD Channel nvarchar(255);

ALTER TABLE Sales_data
ADD OrderID nvarchar(255);

ALTER TABLE Sales_data
ADD SalesOrderLine nvarchar(255);


UPDATE Sales_data
SET Channel = sod.Channel,
	OrderID = sod.OrderID,
	SalesOrderLine = sod.SalesOrderLine
FROM Sales_data 
	INNER JOIN Sales_Order_data sod
		ON Sales_data.SalesOrderLineID = sod.SalesOrderLineID


-- Delete the Sales_Order_data table since it is now redundant

DROP TABLE Sales_Order_data



--------------------------------------------------RESELLER DATA--------------------------------------------------

-- Replace unspecified values in the Reseller table

UPDATE Reseller_data
SET ResellerNumberID = REPLACE(ResellerNumberID, '[Not Applicable]', 'Not Specified'),
	BusinessType = REPLACE(BusinessType, '[Not Applicable]', 'Not Specified'),
	Reseller = REPLACE(Reseller, '[Not Applicable]', 'Not Specified'),
	City = REPLACE(City, '[Not Applicable]', 'Not Specified'),
	State = REPLACE(State, '[Not Applicable]', 'Not Specified'),
	Country = REPLACE(Country, '[Not Applicable]', 'Not Specified'),
	PostalCode = REPLACE(PostalCode, '[Not Applicable]', 'Not Specified')



	----------------------------------------------CUSTOMER DATA---------------------------------------------------

-- Replace unspecified values in the Customer table

UPDATE Customer_data
SET CustomerNumberID = REPLACE(CustomerNumberID, '[Not Applicable]', 'Not Specified'),
	CustomerName = REPLACE(CustomerName, '[Not Applicable]', 'Not Specified'),
	City = REPLACE(City, '[Not Applicable]', 'Not Specified'),
	State = REPLACE(State, '[Not Applicable]', 'Not Specified'),
	Country = REPLACE(Country, '[Not Applicable]', 'Not Specified'),
	PostalCode = REPLACE(PostalCode, '[Not Applicable]', 'Not Specified')




