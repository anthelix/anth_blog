---
layout: postlog
title: "Why Your SQL Server Data Type Choices Matter?"
subtitle: "Be Mine • Ofenbach • 2016"
urlsong: https://open.spotify.com/track/2KklXplRtxMsBYo474Es0w?si=2c05f1c29ee84983
tag: T-sql
date: 2021-07-07
categories: blog
permalink: /:categories/:year/:month/:day/:title.html
---

Right-sizing can result in tremendous storage savings, which can lead to faster database performance. If ypu read my previous notes about [string type]({% post_url 2021-06-07-string-a-long %}), [numric type]({% post_url 2021-06-08-numbers %}) and [money type]({% post_url 2021-06-09-something-ney-money %}), you have already seen that this is a tricky subject.
SQL Server data page size limit of 8 KB and conditions that can cause page splitting. 

######  Fixed and Variable-Length Data Types
In SQL Server, fixed and variable-length data types have different storage requirements.
- Fixed-width data types always require the same amount of storage, regardless of the value stored in those columns or variables.
  

    |---|---|----|----|
    | TINYINT | 1 byte | SMALLINT | 2 bytes|
    | INT     | 2 bytes| BIGINT   | 8 bytes|
    | DATETIME | 8 bytes | SMALLDATETIME | 4 bytes|
    | CHAR | n bytes  | NCHAR  | (n*2) bytes |
    | DECIMAL | 5-17 bytes | FLOAT | 4-8 bytes 
    | UNIQUEIDENTIFIER | 16 bytes | 
    {: .tablelines}
   
- Variable-width data types always have two extra bytes of overhead. In NCHAR and NVARCHAR, the N stands for the number of characters that are stored. Since NCHAR and NVARCHAR can store Unicode information, they require two bytes of storage per character. 

    |---|---|----|----|
    | VARCHAR | n +2 bytes | NVARCHAR | (n * 2) + 2 bytes|
    {: .tablelines}
      
- In 'NCHAR' and 'NVARCHAR', the N stands for the number of characters that are stored. Since 'NCHAR' and 'NVARCHAR' can store Unicode information, they require two bytes of storage per character.




###### Right-Sizing Data Types
When right-sizing data types, a best practice is to analyze whether a data type is the appropriate container for the value that will be stored.
It is important to ask business questions about the organization’s future direction. The goal of right-sizing is to determine whether the data type is appropriate for the application or business.

  | Data Type | Storage(Bytes) | Value Storage |
  |---|:---:|---|
  | TINYINT | 1 | 0 to 255 |
  | SMALLINT | 2 | -32 768 to 32 767 |
  | INT | 4 | -2 147 483 648 to 2 147  483 647  |
  | BIGINT | 8  | -9 223 372 036 854 775 808 to 9 223 372 036 854 775 807   |
  | DATE | 3 | 0001-01-01 to 9999-12-31 |
  | SMALLDATETIME | 4 | 1900-01-01 00:00:00 to 2079-06-06 23:59:59 |
  | DATETIME | 8 | 1753-01-01 00:00:00.000 to 9999-12-31 23-59-59.997 |
  {: .tablelines}

###### Data Pages
SQL Server uses its own container called a data page to store records on disk. 
There are 3 types of data pages: in-row data, row-overflow data, and LOB data. All pages have a fixed size of 8KB or 8,192 bytes.
The 8KB limit affects what can fit in a data page.
- VARCHAR(8000) and NVARCHAR(4000) use row-overflow data pages.
- VARCHAR(MAX) and NVARCHAR(MAX) use LOB data pages.
If a string exceeds the value of a second 8KB data page, SQL Server will create a chain of different pages. This can incur additional storage demands and additional I/O overhead.