---
layout: postlog
title: "Stored Pocedure With Parameter"
subtitle: "You Worry Me • Nathaniel Rateliff & The Night Sweats • 2018"
urlsong: https://open.spotify.com/track/0gqxf8wrEkewjmZB7OT4mL?si=5cf5a82726404bbd
tag: T-Sql
date: 2021-07-18
categories: blog
permalink: /:categories/:year/:month/:day/:title.html
---

Stored Procedures are useful with parameters. The result will change based on the values of the parameters.

The parameters are declared just after the `CREATE PROCEDURE nameProcedure` with the characters `@` then the variable name within space bettween them and finally the type. Example `@City nvarchar(30)`. Each declaration are separed by comma. 

```sql
-- create the stored procedure
CREATE PROCEDURE SelectAllCustomers 
    -- declare the variables name to fill with values
    @City nvarchar(30), 
    @Age tinyint
AS
    SELECT * FROM Customers 
    -- pass value in the WHERE clause
    WHERE CityName = @City 
      AND AgeCustomer = @Age
GO;
-- Execute the SP with value
EXEC SelectAllCustomers @City = 'Paris', @Age >= 18;
EXEC SelectAllCustomers @City = 'Marseille', @Age >= 20;

```
##### Tips
With multiple parameters, it is better using named parameters. With one or two parameters, no need to add the name `EXEC SelectAllCustomers 'Marseille', 20`.   
Do you whant default parameters value?
  
```sql
CREATE PROCEDURE SelectAllCustomers 
    -- declare the variables name to fill with values
    @City nvarchar(30), @Age tinyint =20
```
With `ALTER PROCEDURE`, it's possible to change the query. Copy the query, add the modifications and done! You can execute the new SP.   

To rename a stored procedure using T-SQL, use system stored procedure `sp_rename`.
```sql
sp_rename 'GetProductDesc','GetProductDesc_new'
```

##### Create output parameters
First, create the query with the output variable
 ```sql
-- create the stored procedure
CREATE PROCEDURE SelectAllCustomersByCity 
    -- declare the variable name to fill with value
    @City nvarchar(30), 
    -- create the output parameter to store the bumbers of customers found
    @customer_count int OUTPUT
AS
BEGIN
    SELECT * FROM Customers 
    -- pass value in the WHERE clause
    WHERE CityName = @City;
    -- assign the number of row returned by the query to the parameter
    SELECT @customer_count = @@ROWCOUNT;
END;
-- Execute the SP with value
EXEC SelectAllCustomers @City = 'Paris', @Age >= 18;
EXEC SelectAllCustomers @City = 'Marseille', @Age >= 20;
```
Then, call the SP with the output parameter.
```sql
-- Declare variables to store the values returned by the SP
DECLARE @count int;
-- Use the variables in the SP call.
EXEC SelectAllCustomersByCity 
    @City = 'Paris', 
    @customer_count = @count OUTPUT;
-- Get the results fronm the  variable
SELECT @count AS 'Number of customers found'
```

And for the record, I'll deal with this later. 
-  encrypted stored procedure. The WHAT?
-  temporary procedure

