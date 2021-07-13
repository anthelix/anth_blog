---
layout: postlog
title: "Delete and truncate in SQL Server"
subtitle: " Jimmy • Moriatry • 2007"
urlsong: https://open.spotify.com/track/6Zw0NBdfr1VlVJjDRFwUe1?si=f3a6ed6397034103
tag: Sql
date: 2021-07-04
categories: blog
permalink: /:categories/:year/:month/:day/:title.html
---

Today, some stuff about `DELETE` and `TRUNACATE` statements. 
### DELETE
- remove records from a table, with where clause, one at a time
- removes the rows matched with the where clause. It also does not remove the columns, indexes, constraints, schema
- DML statement, removes the records one by one and it logs each entry into the transaction log
- We can roll back a transaction using the delete statement
- places lock on each row requires to delete from a table.
- logs entry for each deleted row in the transaction log
- slower than the Truncate command.
- retains the identity and does not reset it to the seed value.
- requires more transaction log space than the truncate command
- require delete permission on a table to use this
- can use the Delete statement with the indexed views
- can activate a trigger
        ```
        DELETE [ TOP (top_value) [ PERCENT ] ]
        FROM table
        [WHERE conditions];
        ```

### TRUNCATE
- data definition language (DDL) command.
- removes all rows in a table
- cannot truncate a table that is referenced by a Foreign Key
- cannot specify any condition in the SQL Truncate command.
- places a table and page lock to remove all records.
- does not log entries for each deleted row in the transaction log.
- faster than the delete command
- reset the identity to its seed value
- require Alter table permissions to truncate a table
- cannot use the truncate command with the indexed views
- cannot activate a trigger
- It does not remove the columns, indexes, constraints, and schema.
        ```sql
        TRUNCATE TABLE [database_name.] [schema_name.]table_name
        [ WITH ( PARTITIONS ( partition_number | partition_number TO partition_number ) ] ;
        ```