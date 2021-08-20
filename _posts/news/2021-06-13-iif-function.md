---
layout: postlog
title: "Life Is Not IIF()"
subtitle: "Talk To Me • Y'Akoto • 2012"
urlsong: https://open.spotify.com/track/1EaisEqFzeA0O50rqnrPVG?si=22ecde7daad24dd6
tag: T-Sql
date: 2021-06-13
categories: blog
permalink: /:categories/:year/:month/:day/:title.html
---

I discovered the `IIF()` function with Tableau Software. It's really simple to use. It returns a value if a condition is `TRUE`, or another value if a condition is `FALSE`.
- Syntax: `IIF(boolean_expression, value_if_true, value_if_false)`
    ```sql
    SELECT OrderID, Quantity, IIF(Quantity>10, 'MORE', 'LESS')
    FROM OrderDetails;
    ```
- `IFF` can be nested and fill with variables
    ```sql
    SELECT IIF(@Person = 'Raj', 
               'Likes Apple',
               IIF(@Person = 'Vinay', 
                   'Likes Orange',
                   'Person does not exists in the list')
               ) AS Result;
    ```
Sometimes, data types might be different in the result conditions. SQL Server gives the hightest precedencce data type. If `True` is float and `False` is integer, the result for both will be a float. I will go deeper with this topic later. 

A similar result can be achieved using a `CASE` statement as well, `IIF()` is a shorthand way for writing a `CASE` expression.

And that's all!
