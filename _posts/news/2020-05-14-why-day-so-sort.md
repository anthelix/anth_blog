---
layout: postlog
title: "Why day are so short?"
subtitle:
tag: Data
date: 2020-05-14
categories: blog
permalink: /:categories/:year/:month/:day/:title.html
---

Well. Five minutes ago it was 11:00 and now it's 1:30... 
After finding additional datasets, I explored today the datasets I have at my disposal. After doing a quick dataset scan and a brief description, I started to explore the dataset that I think is central.   
##### Data Immigration    
These are data from the I-94 Form (Arrival/Departure Record) to foreign visitors on their arrival in US.
The data is essentially numeric (float) and provides factual information about the person and their arrival and departure. The few objects are dates or codes of airport, gender, flights, etc... 
A data file is added every month to the data set, storage format sas7bdat, a single month may contain several million records. 
[here](https://travel.trade.gov/view/m-2019-O-001/index.html), an example of statistics from this dataset.  

From this dataset as a fact table, we can build a datawarehouse. With the other datasets or dimensions, we can then locate the intersection of the dimensions and display them. It will then be possible to analyze and compare the data in different ways. So, OLAP!
With OLAP, we have accessible (business-related) data, understandable data, aggregated data, a simple and flexible query mode, a fast and efficient system and a decision aid.

I learn : `%who_ls Dataframe` in python cell   
I refresh my [PEP8](https://www.python.org/dev/peps/pep-0008/) with this web page ;)    

Tomorrow, I will work with dimension table.    

