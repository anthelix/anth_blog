---
layout: postlog
title: "SELECT INTO Statement"
subtitle: "Ruby Lee • Bill Withers • 1974 "
urlsong: https://open.spotify.com/track/0RTPZ8Yd44dsoR3uSkK9GT?si=eeb043f26b4647af
tag: T-Sql
date: 2021-07-02
categories: blog
permalink: /:categories/:year/:month/:day/:title.html
---

Yesterday, I discovered the `SELECT INTO` statement.   
It creates a new  table and inserts rows from the query into it, an existing table.
```sql
SELECT col1,col2...ColN
INTO New_table
FROM tab1
[Where conditions];
```
With the `WHERE` clause, it specifies which rows to copy, and gets partial data. The `SELECT` clause chose few columns or any. The `JOIN` clause allows to create a table from several tables.    
The disadvantage of this methode to create table, it does not copy constraints such as primary key and indexes from the source table to the destination table.
