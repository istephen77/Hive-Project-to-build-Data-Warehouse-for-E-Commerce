
create view v_customer as 
select cus.CustomerID,cus.AccountNumber, cus.CustomerType, ind.Demographics, cus.TerritoryID,cus.ModifiedDate from customer_test cus 
join individual_test ind on ind.CustomerID = cus.CustomerID ;

create view v_salesorderheader_demo as
select
SalesOrderID,          
RevisionNumber,        
OrderDate,             
DueDate,               
ShipDate,              
Status,                
SalesOrderNumber,      
PurchaseOrderNumber,   
AccountNumber,         
so.CustomerID,            
ContactID,           
BillToAddressID,       
ShipToAddressID,       
ShipMethodID,          
CreditCardID,          
CreditCardApprovalCode,
so.CurrencyRateID,        
SubTotal,              
TaxAmt,                
Freight,               
TotalDue,              
Comment,              
so.SalesPersonID, 
sp.TerritoryID,
st.name territory,
st.CountryRegionCode,
st.group,
so.ModifiedDate         
from salesorderheader so left join salesperson sp on sp.SalesPersonID = so.SalesPersonID
left join salesterritory st ON st.TerritoryID = sp.TerritoryID;

create view v_salesorderdetails_demo as
select          
SalesOrderDetailID,    
SalesOrderID,
CarrierTrackingNumber, 
OrderQty,              
ProductID,             
UnitPrice,             
UnitPriceDiscount,     
LineTotal,       
sod.SpecialOfferID, 
so.Description,
so.DiscountPct,
so.Type,
so.Category,
so.ModifiedDate   
from salesorderdetail sod join specialoffer so 
on sod.SpecialOfferID = so.SpecialOfferID;

create view v_stores as
select st.CustomerID,
st.Name,
st.SalesPersonID,
st.Demographics,
sp.TerritoryID,
sp.SalesQuota,
sp.CommissionPct,
sp.SalesYTD,
sp.SalesLastYear,
sp.ModifiedDate
from  store st join salesperson sp 
on st.SalesPersonID = sp.SalesPersonID;
