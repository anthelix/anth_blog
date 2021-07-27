---
layout: postlog
title: "SQL Server Logical Query Processing Order"
subtitle: "Close To Me • The Cure • 1985"
urlsong: https://open.spotify.com/track/02C9AbaB70qN31mPlwcNNK?si=a43f1df73e084934
tag: Informatica
date: 2022-07-01
categories: blog
permalink: /:categories/:year/:month/:day/:title.html
---

SQL defined an physical processing order, or 'keyed-in order', similar to the English language spoken. However, the data is processed from the input tables through steps into the query result. It's the Logical Query Processing Order. I often write my queries in this order. Doesn't that make sense? 

```sql
/*(8)*/  SELECT /*9*/ DISTINCT /*11*/ TOP num selectList
/*(1)*/  FROM leftTab
/*(3)*/       joinType JOIN rightTab
/*(2)*/       ON joinCondition
/*(4)*/  WHERE whereCondition
/*(5)*/  GROUP BY groupByList
/*(6)*/  WITH {CUBE | ROLLUP}
/*(7)*/  HAVING havingCondition
/*(10)*/ ORDER BY orderByLiistt

``` 
Let's go deeper into it!  
Virtual Table(VT) is used as the input to the next step. VTs are not available to the caller, only the last one is returned.
##### Getting Data
1- `FROM` identifies the source tables, performed a `CROSS JOIN` between the tables to assembling data, get n * m rows, and generate VT1. 
2- `ON joinCondition` is applied on VT1. `True` rows are inserted in VT2.
3- `joinType JOIN` If the join is an `INNER JOIN`, the result of the 2nd step is also the result of the join so VT2.
If it's an `OUTER JOIN`, it's a bit more tricky for me. In a `OUTER JOIN`, you mark one or both input tables as **preserved** by specifying the type of `OUTER JOIN` (left, right, full). Preserved means that you want all of its rows returned, even when filtered out by the `joinCondition`. A `LEFT OUTER JOIN` marks the left table as preserved and so long. It's return VT3, rows from VT2 plus rows from the preserved table for which a match was not found in VT2. This rows as referred to as *outer rows*.
NOTE: If the `FROM` clause contains 2 or more tables, process repeat steps 1  through 3 untill all tables completely processed. 

##### Rows Filter
4- `WHERE` : Only  rows from VT3 with `whereCondition` is TRUE are inserted to VT4. Alias defined in the `SELECT` clause are not allowed here because the `WHERE` clause  is evaluated before the `SELECT` clause. Because the data is not grouped yet, you cannot use aggregate filters here ( cannot write `WHERE orderdate = MAX(orderdate`)).    
Note: With the `OUTER  JOIN`, when specify a logical expresion  in  the `ON` filter  or in the `WHERE` filter? `ON` is applied before adding outer rows. An elimination of a row from the preserved table by the `ON` filter is not final because `OUTER JOIN` will add it back. `WHERE` is applied after adding outer rows. The elimination of a row by the `WHERE` filter is final.  

##### Grouping rows and groups
5- `GROUP  BY` : Rows from VT4 are arranged by `groupByList`. VT5 is generated. If you specify a `GROUP BY` clause in the query, then all subsequent steps (eg: HAVING, SELECT) can be specified expression scalar values obtained for groups. If you want to refer to an element that is not part of your `groupByList`, it must be contained within an aggregate function like `MAX()` or `SUM()`.
6- `WITH {CUBE | ROLLUP}` : Groups of groups are added from VT5 generating VT6.

##### Group filter
7- `HAVING` : Only groups with `havingCondition` TRUE are inserted to VT7. It is evaluated after the data has been grouped. The `HAVING` clause uses the predicate COUNT(*) > 1.

##### Process the SELECT clause
8- `SELECT` : The `selectList` is processed, generating VT8. It's producing the result attributes and assign names if they are derived from expressions. Alias created in the `selectList` can not be used in the previous steps, can no longer even use the `selectList`, it can only be used in the `ORDER BY`. Note that an alias created by the `SELECT` step isn’t even visible to other expressions that appear in the same `selectList`.
9- `DISTINCT` :  Duplicated rows are removed, VT9  is generated.

###### Handle Presentation Ordering
10- `ORDER BY`  : Rows are sorted by the `orderByList`, generate a cursor (VC10). Cursor is an object that contains a particular physical organization row order. The use the `ORDER BY` clause of a query can not be used as a table expression. Table expression comprising: a view, inline table valued function, sub-queries, and the common expressions derived table (CTE).   Unless you want to order lines, do not specify an `ORDER BY` clause. Sortng is cost. Because this step is not to return the table, but returns the cursor, use the `ORDER BY` clause of a query can not be used as a table expression.
Note: Use GROUP BY, then use the DISTINCT is redundant.
11- `TOP  / OFFSET-FETCH`  :  Selected a specified number  or percntage of rows from VC10 and return the caller.

