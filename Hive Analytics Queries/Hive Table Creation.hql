create external table customer_test (
`CustomerID` int,
`AccountNumber`  string,
`CustomerType` varchar(1),
`Demographics` string, 
`TerritoryID` int,
`ModifiedDate` timestamp
)
row format delimited fields terminated by ',';

load data inpath '/input/v_customer/part-m-00000' overwrite into table customer_test;
load data inpath '/input/v_customer/part-m-00001' into table customer_test;
load data inpath '/input/v_customer/part-m-00002' into table customer_test;
load data inpath '/input/v_customer/part-m-00003' into table customer_test;

create external table sales_order_header (
`SalesOrderID` int,          
`OrderDate` timestamp,             
`DueDate` timestamp,               
`ShipDate` timestamp,              
`Status` int,                
`SalesOrderNumber` string,      
`PurchaseOrderNumber` string,   
`AccountNumber` string,         
`CustomerID` int,            
`ContactID` int,           
`BillToAddressID`int,       
`ShipToAddressID` int,       
`ShipMethodID` int,          
`CreditCardID` int,          
`CreditCardApprovalCode` string,
`CurrencyRateID` int,        
`SubTotal` double,              
`TaxAmt` double,                
`Freight` double,               
`TotalDue` double,              
`Comment` string,              
`SalesPersonID` int, 
`TerritoryID` int,
`territory` string,
`CountryRegionCode` string ,
`ModifiedDate` timestamp
)
row format delimited fields terminated by ',';

load data inpath '/input/v_salesorderheader/part-m-00000' overwrite into table sales_order_header;
load data inpath '/input/v_salesorderheadero/part-m-00001' into table sales_order_header;
load data inpath '/input/v_salesorderheader/part-m-00002' into table sales_order_header;
load data inpath '/input/v_salesorderheader/part-m-00003' into table sales_order_header;


create external table sales_order_details (
`SalesOrderDetailID` int,    
`SalesOrderID` int,
`CarrierTrackingNumber` string, 
`OrderQty` int,              
`ProductID` int,             
`UnitPrice` double,             
`UnitPriceDiscount` double,     
`LineTotal` double,       
`SpecialOfferID` int , 
`Description` string,
`DiscountPct` double,
`Type` string,
`Category` string,
`ModifiedDate` timestamp  
)
row format delimited fields terminated by ',';

load data inpath '/input/v_salesorderdetails/part-m-00000' overwrite into table sales_order_details;
load data inpath '/input/v_salesorderdetails/part-m-00001' into table sales_order_details;
load data inpath '/input/v_salesorderdetails/part-m-00002' into table sales_order_details;
load data inpath '/input/v_salesorderdetails/part-m-00003' into table sales_order_details;


create external table store_details (
`StoreID` int,
`Name` string,
`SalesPersonID` int,
`Demographics` string,
`TerritoryID` int,
`SalesQuota` double,
`CommissionPct` double,
`SalesYTD` double,
`SalesLastYear` double,
`ModifiedDate` timestamp  
)
row format delimited fields terminated by ',';

load data inpath '/input/v_stores/part-m-*' overwrite into table store_details;

create table creditcard (
`creditcardid` int,
`cardtype` string,
`cardnumber` string,
`expmonth` int,
`expyear` int,
`modifieddate` timestamp
)
row format delimited fields terminated by ',';

load data inpath '/input/creditcard/part-m-*' overwrite into table creditcard;

select * from customer_test;
select CustomerID,Demographics from customer_test;