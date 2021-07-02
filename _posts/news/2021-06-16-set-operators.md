---
layout: postlog
title: "Set Operators!"
subtitle: "Talk To Me • Y'Akoto • 2012"
urlsong: https://open.spotify.com/track/1EaisEqFzeA0O50rqnrPVG?si=22ecde7daad24dd6
tag: sql
date: 2021-06-16
categories: blog
permalink: /:categories/:year/:month/:day/:title.html
---

Set Operators are useful to combine the same type of data from several tables anf then produces a single result set based on the operator.  Here they comes: UNION, UNION ALL, INTERSECT, EXCEPT.
- The rules on Set Operations:
    - Number and  order of columns must be the same in the result sets of all the queries. 
    - Data type of each column must match between every  result set and  the first result set.
    - The column names or aliases must be determined by the first select statement.
- Syntax:
    ```sql
    SELECT [Col, . . . ] FROM [t1] [WHERE conditions]
    [set operator] 
    SELECT [Col, . . .] FROM [t2] [WHERE conditions]
    [set operator]
    ...
    ...
    SELECT [Col, . . . ] FROM [tableN] [WHERE conditions]
    [ORDER BY];
    ```
- UNION: Combine two or more result sets into a single set, without duplicates.   
- UNION ALL: Combine two or more result sets into a single set, including all duplicates.
- INTERSECT: Takes the data from both result sets which are in common, returns any distinct values that are returned by both the query on the left and right sides of the INTERSECT operand
- EXCEPT: Takes the data from first result set, but not the second (i.e. no matching to each other), so retrieve all records from the first dataset and then remove from the results all records from the second dataset. 