---
layout: postlog
title: "Select Into Statement"
subtitle: " •  • "
urlsong: 
tag: sql
date: 2021-06-22
categories: blog
permalink: /:categories/:year/:month/:day/:title.html
---

Yesterday, I discovered the `SELECT INTO` statement.   
It creates a new  table and inserts rows from the query into it, an existing table.
```
SELECT col1,col2...ColN
INTO New_table
FROM tab1
[Where conditions];
```
With the `WHERE` clause, it specifies which rows to copy, and gets partial data. The `SELECT` clause choosee few columns or any. The `JOIN` clause allows to create a table from several tables. 
The disadvantage of this methode to create table, it does not copy constraints such as primary key and indexes from the source table to the destination table.

