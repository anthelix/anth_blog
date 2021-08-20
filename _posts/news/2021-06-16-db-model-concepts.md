---
layout: postlog
title: "Database Model Concepts"
subtitle: "This Is What You Did • This Is The Kit • 2020"
urlsong: https://open.spotify.com/track/35e4UTDLUpqOzGqjWz3AoT?si=5bf61ebd010f4460
tag: Data
date: 2021-06-16
categories: blog
permalink: /:categories/:year/:month/:day/:title.html
---

Historically, three types of database model groups are observed.

### Early Database Model
- **Hierarchical model**,  only one parent, very slow
- **Network model**, multiple parent

#### Relational Data Models
- **Entity-relationship model**
  - based on two concepts:
    - Entities, defined as tables that hold specific information (data)
    - Relationships, defined as the associations or interactions between entities
  - optimized for addition, updating and deletion of data in a real-time Online Transaction System.
  - Between `entity`, there are `relationships` and `entity` have `attributes`.

- **Dimensional model**
  - developed by Ralph Kimball and consists of `fact` and `dimension` tables.
  - designed to read, summarize, analyze numeric information like values, balances, counts, weights
  - Steps of Dimensional Modelling:
    1. Identify Business Process WHY?
    2. Identify Grain (level of detail) HOW MUCH?
    3. Identify Dimensions 3WS?
    4. Identify Facts WHAT?
    5. Build Start (the schema)
   
#### Post-relational Data Models
Here the two ones that I meet most often in my research 
- **Graph Model**
  - Database designed to treat the relationships between data as equally important to the data itself. It is intended to hold data without constricting it to a pre-defined model. 
  - Data is stored like we first draw it out - showing how each individual entity connects with or is related to others.
- **Object-oriented database models**
  - In object-oriented programming, everything is an object, and many objects are quite complex, having different properties and methods. An object-oriented database management system works in concert with an object-oriented programming language to facilitate the storage and retrieval of object-oriented data.

Today, the highlight was to have an overview of the database model. 