---
layout: postlog
title: "The Set Operators"
subtitle: "The Girl From Ipanema • Stan Getz, Joao Gilberto, Astrud Gilberto • 1989"
urlsong: https://open.spotify.com/track/3898C4AbdbptwYet6547e5?si=46fba54fbfab4504
tag: Sql
date: 2021-06-22
categories: blog
permalink: /:categories/:year/:month/:day/:title.html
---

Set Operators are EXCEPT, INTERCEPT, UNION and UNION ALL. Let's go and find out!   
There are great to combine the same type of data from several tables and then get a single result set. 
- Number and order of columns must be the same in all the requests and data type must be consistent. 
- Data type of each column must match between every result set and the first resultset.
- Column names or aliases must be determined by the first SELECT statement
- Null values are equal 
- EXCEPT : Return distincts rows of the left statement, not find in the right statement. Retrieve all record from the first dataset, then remove from the result all records from the second dataset.
- INTERCEPT : Return distinct rows common in left and right statement
- UNION: Combine two or more result sets into a single set, without duplicates.
- UNION ALL : Combine two or more results sets into a single set, including all duplicates. 
    ```sql
    SELECT [Col, . . . ] FROM [t1] [WHERE conditions]
    [set operator]
    SELECT [Col, . . .] FROM [t2] [WHERE conditions]
    [set operator]
    ...
