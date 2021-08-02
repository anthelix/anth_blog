---
layout: postlog
title: "Data Quality introduction"
subtitle: "Enjoy The Silence • Depeche Mode • 1998"
urlsong: https://open.spotify.com/track/6WK9dVrRABMkUXFLNlgWFh?si=0dfafe1d970149b0
tag: Informatica
date: 2021-07-08
categories: blog
permalink: /:categories/:year/:month/:day/:title.html
---

The ability of data characteristics to meet the internal (management, decision making) and external (regulations) requirements of an organization is Data Quality (DQ).    
Data Quality management is covered by :


- Data Governance:
  - Supervising the quality, the updating, the procedures set up to maintain the data quality;
  - Defining the key objectives of the company and how to achieve them;
  - Focusing on the data and the goals important to the company and deleting the irrelevant data;
  - Educating co-workers about DQ.
- Data Quality Assurance:
  - Verifying what's wrong in the data (inaccurate, inconsistent, incomplete data), checking what's wrong, make a plan to anticipate its failures and propose patches to guarantee data quality over time;
  - Allowing the achievement of the objectives identified by the data governance.
 - Data Quality Control:
    - Making sure the data is accurate and does not contain unneeded data;
    - Controling both the quality of the data and its use by the company's stakeholders;
    - Deciding if the data is useful, relevant and worth exploiting.
  
Some data quality dimensions:

- Relevance: it's the valid reason to  collect the data. Do you really need this information?
- Accuracy: degree at which information accurately reflects an event or the described object. How well does a piece of information reflect reality?
- Completeness: when data fulfills expectations of comprehensiveness. Does it fulfill your expectations of what’s comprehensive?
- Consistency: when data matches in more than one stored place. Does information stored in one place match relevant data stored elsewhere?
- Precision: depth of knowledge encoded by the data.
- Accessibility/availability: how users can learn that the information exists, find it, view it and import it into their own work environment.
- Uniqueness: there’s only one instance of it appearing in a database. Is this the only instance in which this information appears in the database?
- Validity/Conformity: refers to information that doesn’t conform to a specific format or doesn’t follow business rules. Is the information in a specific format, does it follow business rules, or is it in an unusable format?
- Timeliness: when the information is available right when it's needed. Is your information available when you need it?
- Integrity : degree of the validity of relationships (integrity constraints) between different data entities over its lifecycle.

The origins of poor data quality can be found at any level of the data life cycle. Here are the main reasons: 

- Human or organizational errors;
- Input errors, user interfaces where validations are not rigorous;
- Data import framework, poorly defined rules for enriching the dataset;
- Database maintenance steps, constraint deletion that you forget to reactivate.