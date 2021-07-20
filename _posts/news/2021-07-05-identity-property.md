---
layout: postlog
title: "What is Identity ?"
subtitle: "Isn't It Something • Frannie Golde • 2018"
urlsong: https://open.spotify.com/track/5CoLagayEHWXYGVl68KbgL?si=4379a9c12721495b
tag: Sql
date: 2021-07-05
categories: blog
permalink: /:categories/:year/:month/:day/:title.html
---

The `IDENTITY()` property contains an automatically incrementinng identification number. It can be used with the `CREATE TABLE` and the  `ALTER TABLE` statement. 
```
CREATE TABLE Pets (
    PetId int IDENTITY(1,1) PRIMARY KEY,
    PetName varchar(255)
    );
```
The first row inn `PetId` column will have the value 1 and be increment by 1 for the next row 
We can't override the values created by the `IDENTITY()` property except by enabling IDENTITY_INSERT:
- with `SET IDENTITY column_identity ON`
- user must own the tble or have `ALTER` permission on th table
- Don't forget `SET IDENTITY_INSERT column_identity OFF`

Only one Identity column by table and it doesn't guarantee uniqueness of the value nd  consecutive values  within a transaction. Few useful Identity functions in SQL Server work with the IDENTITY column in a table.
- `SQL @@IDENTITY` Function : return the maximum used IDENTITY
- `SQL SCOPE_IDENTITY()` Function: return the last IDENTITY value in a table
- `SQL IDENTITY Function: different from the IDENTITY property used while creating any table. useful with the SELECT INTO statement. If IDENTITY in the first table then the table created using this statement inherits of it. Else:
```
SELECT IDENTITY( INT, 100, 2) AS NEW_ID, 
       ID, 
       Name
INTO temp2
FROM employeedata;
```
