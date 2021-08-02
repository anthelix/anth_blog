---
layout: postlog
title: "COUNT() in Sql Server"
subtitle: "All I Need • Jake Bugg • 2020"
urlsong: https://open.spotify.com/track/3aMyQSDW0DJ7LTOkrd29hU?si=d3061fbb93cd4e99
tag: T-Sql
date: 2021-07-13
categories: blog
permalink: /:categories/:year/:month/:day/:title.html
---

The aggregate function `COUNT()` returns the number of items found in a dataset.   
Syntax: `COUNT ([ALL | DISTINCT] expression)`, return type is an integer.  
The `COUNT()` function applies to all values and returns the number of unique non-zero values. We connot use a subquery or aggregate function in the expression.   
 
We may encounter some other forms:
- `COUNT(*)` : doesn't  support DISTINCT, takes no parameters, include NULL  and   duplicates values :   
    ```sql
    SELECT COUNT(*) cloth_count FROM dressing.clothes;
    ```
- `COUNT(expression)`: includes duplicate values but does not include NULL values,  only count rows where the given column is NOT NULL :
    ```sql
    SELECT COUNT(cloth) cloth_count FROM dressing.clothes;
    ```
- `COUNT(ALL expression)` : evaluate the expression for  each   row,  returns  the   number  of non-null values. It's the default value.
    ```sql
    SELECT COUNT(cloth) cloth_count FROM dressing.clothes;
    ```
- `COUNT(DISTINCT expression)`:  evaluate the expression for  each   row,  returns  the   number  of  unique, non-null values.
    ```sql
    SELECT COUNT(DISTINCT cloth) cloth_count FROM dressing.clothes;
    ```
No difference between `COUNT(*)` and `COUNT(1)`. `COUNT(1)` assigns the value (number 1) to every row in the table, then the same function counts how many times the value in the parenthesis has been assigned. This constant expression will never evaluate to NULL.  

We may encounter other counters:
- `ROW_NUMBER()` window function: to number the output of the result set. The maximum of that number which would be the last number which also represents the number of records in that table. 
- `Exec Sp_spaceused 'table_namee'`

