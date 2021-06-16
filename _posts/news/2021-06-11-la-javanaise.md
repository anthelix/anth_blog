---
layout: postlog
title: "Stephanie Chatagner, La Javanaise (Serge Gainsbourg, 1963)"
date: 2021-06-11
categories: blog
author: Java
permalink: /:categories/:year/:month/:day/:title.html
---

This week, it's ... Java. So, Go head!   
Although this first day was quiet, the foundations of this language are laid! 
Object Oriented − In Java, everything is an Object:  
- portable, statically typed, object-oriented programming language
- developed by Sun in the mid 1990s
- useful for  web pages and mobile apps or  for the needs scalability, performance, multithreading, memory management and portability
- From C and C++

Here, I found help in my Java path:
[Java Tutorial (English)](https://www.tutorialspoint.com/java/index.htm)   
[Achref El Mouelhi (French)](http://www.lsis.org/elmouelhia/teaching.html)

Major Building blocks
- **Keywords** : predefined words of the Java language
- **Variables** : to store data
- **Loops**: to iterate over data structures
- **Methods** : to write a block of code once that we can then re-use many times
- **Access Modifiers**: to restrict access to variables and methods
- **Javadoc** : JavaDoc produces a searchable HTML document that defines the classes and interfaces of an application
- **Arrays** : to easily and efficiently store and retrieve collections of data

### Java Keywords:

- Keywords are simply words that have a predefined meaning in the Java language.
- used for some internal process or represent some predefined actions.
- these words already have a meaning in Java, so they are reserved.
- not allowed to use as a variable names or objects.

### Variables

- A **variable** is a combination of:
    - A *location* in the computer's memory and
    - An associated *name* that we can use in our code to refer to the data in that memory location
- Static Typing
    - The data type is attached to the variable when it is first declared
    - The data type is checked when the code is compiled
    - The data type for a variable cannot later be changed
    - `;` : end of the statement
- Primitive vs Reference
    - **primitive** = a value, by itself   `type name = value;` loweercase
        `char name = 'value' ;` !!!! simple quote
    - **reference value** = refers to an object stored  in another location  in memory, with data object  `Type name = value;` uppercase
        - `String name = "few words"  ;` !!!! double quote
        - Types are String or Array, methods attached to accss and manipulate the data they contain `text.length();`, can be customized
        - user-defined classes
- Type Casting
    - change type in another type
        - **Automatic** : converts a smaller type into a larger type

            ```java
            int intNumber = 3;
            double doubleNumber = intNumber;
            ```

        - **Manuel** : Convert a larger type into a smaller type, Convert one object type into another.

            ```java
            double doubleNumber = 3.5;
            int intNumber = (int)doubleNumber;
            ```

        - Truncation : loss precision

So, step by step, and happy learning!

