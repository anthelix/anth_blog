---
layout: postlog
title: "Stephanie Chatagner, And At The Beginninng"
date: 2021-06-07
categories: blog
permalink: /:categories/:year/:month/:day/:title.html
---

Well. Last weeks, I worked around Data Management. I will write about this  topic later. Right now, I learn sql sever  and Transact sql.  Let's talk about  data types and first CHAR and VARCHAR.       
Remember, the byte is " the unit of information corresponding to 1 byte (1 octet in french), that is 8 bits.    
CHAR(n) and VARCHAR(n). Both are data types  to store characters.  The max lenght is  8000. 
CHAR(n) is fixed-lenght data type, all values are stored in n bytes even if  the word is less than n.
VARCHAR(n) is  variable-lenght data type, all value are stored by their lenght,  one character, one bytes and 2 bytes to hold lenght information. When to uses them?
CHAR(n) is useful to store values whose are always going to be the same lenght and VARCHAR(n) with values whose size varies. 
Since VARCHAR(n) has an overhead of 2 bytes compared to CHAR(n), if the data has a fixed length, storing it in VARCHAR(n) will take more space.

