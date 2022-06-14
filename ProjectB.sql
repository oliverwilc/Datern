/* Cities customers are located */
select CustomerName, City from Customers$

/* How many countries shipped to */
select count(distinct Country) as 'Number of Countries shipped to' from Customers$

/*Which customers are based outside of europe? */
select CustomerName, Country from Customers$ where Country =  'USA' or
Country =  'Brazil' or Country =  'Mexico' or Country =  'Argentina'
or Country =  'Canada' or Country =  'Venezuela'

/*Most recent customer?*/
select distinct CustomerName from Customers$ where CustomerID = (select max(CustomerID) from Customers$);
 
 /*Customers outside london*/
 select distinct CustomerName, City from Customers$ where not City = 'London';

 /*Customers sorted by country then name */
 select distinct Country, CustomerName from Customers$

 /*Customers missing postcodes */
 select CustomerName from Customers$ where PostalCode is null
 