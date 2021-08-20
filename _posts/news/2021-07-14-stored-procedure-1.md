---
layout: postlog
title: "What's Stored Procedure?"
subtitle: "Fill It Still • Portugal.The Man • 2017"
urlsong: https://open.spotify.com/track/6QgjcU0zLnzq5OrUoSZ3OK?si=24e59b749e894c20
tag: T-Sql
date: 2021-07-14
categories: blog
permalink: /:categories/:year/:month/:day/:title.html
---

If you have an SQL query which you often need, Stored Prodecure is what you are looking for.  It's a piece of code that we can save, then reused over and over again.  
Stored procedures can also be cached. The main purpose of SP's to hide direct SQL queries from the code and improve performance of database operations such as select, update, and delete data. It can  be easily modified!   
It's stored as a  named object in the SQL Server Database.  
Just call it to execute it! SP accept parameters in input too, and can return output parameters.   
```sql
-- create
CREATE PROCEDURE procedure_name
AS
    sql_statement
GO;

-- Execute
EXEC procedure_name;
```

With `ALTER PROCEDURE`, it's possible to change the query. Copy the query, add the modifications and done! You can execute the new SP.

To rename a stored procedure using T-SQL, use system stored procedure `sp_rename`.
```sql
sp_rename 'SelectAllCustomers','SelectAllCustomers_new'
```

To delete a procedure, very easy to `DROP PROCEDURE SelectAllCustomers`
