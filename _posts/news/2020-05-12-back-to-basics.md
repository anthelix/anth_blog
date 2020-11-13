---
layout: postlog
title: "Stephanie Chatagner, Back to basics"
date: 2020-05-12
categories: blog
permalink: /:categories/:year/:month/:day/:title.html
---

Well. Since January, many notions have been addressed. Each chapter has brought its share of theory and practical exercises.   
First OLAP vs OLTP.   
Online Transaction Processing as OLTP and Online Analytical Processing, OLAP.   
A database store data. Easy. Data is s more complicated.  
OLTP is data processing, with transaction day to day. Design is normalised and written to the database as quickly as possible. OLTP is atomic, a transaction succeds or fail, no intermediate. So, data update and queries are fast, and nice with the system ressources. But the data format is different in these databases. Make join between db is difficult and ask performance to the system. OLTP is the "who" question. Fast. Direct.     
OLAP is data analytics. Databases are denormalized and answer some complicated questions "How", "What" with aggregation "sum" "average" and join to other tables. Allow high volume of data, the queries are slow. We want make this analyses at regular time intervals. 
Cube: It's OLAP. One dimension of the cube represent a feature, an angle of the data. The Cube is structured and be manipuled acroos dimensions, sliced (exclude month, exclude products). Datawarehouse are built around the Cubes. 

c/c: OLTP’s priority is maintaining data integrity and processing a large number of transactions in a short time and OLAP’s priority is query speed, and transactions tend to be batched and at regular intervals (ETL Jobs).    

Tomorrow, I will work about data clean.    
So, step by step!

s
