---
layout: postlog
title: "Data Management"
subtitle : "String A Long • Fleetwood Mac • 1992"
urlsong: https://www.lyrics.com/lyric/20948057/Fleetwood+Mac
tag: T-Sql
date: 2021-06-07
categories: blog
permalink: /:categories/:year/:month/:day/:title.html
---

Well. Last weeks, I worked around Data Management. I will write about this  topic later. Right now, I learn sql server  and Transact sql. Remember, the byte is " the unit of information corresponding to 1 byte (1 octet in french), that is 8 bits.    
Let's talk about  data types and first CHAR and VARCHAR.       
**CHAR(n) and VARCHAR(n).** Both are data types  to store characters.  The max lenght is  8000. 
CHAR(n) is fixed-lenght data type, all values are stored in n bytes even if  the string is less than n.
VARCHAR(n) is  variable-lenght data type, all values are stored by their lenght,  one character, one byte and more 2 bytes to hold lenght information. When to use them?
CHAR(n) is useful to store values whose are always going to be the same lenght and VARCHAR(n) with values whose size varies. Since VARCHAR(n) has an overhead of 2 bytes compared to CHAR(n), if the data has a fixed length, storing it in VARCHAR(n) will take more space.
Then, **NCHAR(n) and NVARCHAR(n).** Same as previous, both store characters,  one for fixed-lenght, the other for  variable-leght data type.  n is the word lenght in byte pairs, so the max lenght is 4000.  The storage size is double n bytes and extra plus 2 bytes for NVARCHAR. Informations if UTF-16 are stored in the odd bytes.

