---
layout: postlog
title: "What is sql server?"
subtitle: "Saudosismo • Gal Costa • 1969"
urlsong: https://open.spotify.com/track/6rMp4peGqo1zaT8ErytHgd?si=83a4018ab67049e1
tag: sql
date: 2021-06-15
categories: blog
permalink: /:categories/:year/:month/:day/:title.html
---

Do you pronounce  "S-Q-L" or "Sequel" ?     
It's an acronyme for Strutured Query Langage, a language to communicate with a database. SQL server is a relational database managemment system or RDBMS, developed by Microsoft. It operates as a server, containing many databasees, with multiple clients accesing the databases  from acrross a network. Clients are often other applications(website or CRM). We are  talking  about Client-server based systems.   SQL Server  comes with [SQL SERVER Management Studio](https://database.guide/what-is-sql-server-management-studio/), a graphical console to develop, configure and administer the SQL Server. 

There are 5 subsets of SQL
- Data Definition Language (DDL): to describe  data  and its  relationnships in a database. It's used for changing the structure of a table, with CREATE, ALTER, DROP, TRUNCATE, COMMENT statements on database or database table. Auto-committed. 
- Data Manipulation Language (DML): to manipulate data  in a databaase, with INSERT, UPDATE, DELETE, MERGE. Not auto-committed. 
- Data Control Language (DCL): to control access to data  stored in a databasee, with GRANT, REVOKE, DENY, . 
- Transaction Control Language (TCL):  used with DML and control the Transactions with COMMIT, ROLLBACK, SAVEPOINT, SET TRANSACTION.
- Data Query Language (DQL): used to fetching data from a relational databa with only one command SELECT

To mak it short, Transact Sql = Standart sql + Microsoft extension, It’s possible to install more than one SQL server by computer. The server or instance is indépendant from the other instances and services. When an instance is installed, one instance by default is createded too (MSSQLSERVER) Must be renamed (ex: MIA-SQL).    
Convention naming for the next instance :
- Name instance = 'Instance_name\sub_name' (Ex: MIA-SQL\SQL2)
- Name service = 'Service_name$instance_name' (MSSQL$SQL2)

To find the services, go to the flag Windows > Win Adm Tools > ClR > properties
