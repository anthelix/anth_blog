---
layout: post
title: "Stephanie Chatagner, Why I never lose"
date: 2020-05-10
---

> “I never lose, I either win or I learn” Nelson Mandela  
Well. Today, I worked around my datasets. I would like to add datasets to my project. One in particular caught my attention: the [GDLT project](https://www.gdeltproject.org/). It is a database of all the events around the world found in the news. The database is in a bucket of aws s3 and it's gigantic! I first tried to explore it with Spark and Docker. One mistake, which I couldn't solve all day: "No FileSystem for scheme: s3". There were some serious leads, I couldn't find any solution... for the moment. The days are passing and the dateline is getting closer. Another way, "boto3" works but doesn't work locally on my laptop. 
Tomorrow I'll find a smaller dataset.

I read [here](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EC2_GetStarted.html) about EC2 and find some tips. 

I learn about SparkContext(), SparkSession(), JAR files, Spark uses libraries from Hadoop to connect to S3. S3a protocol is scalable, supports authentication with AIM roles. Assign an IAM Role to your worker nodes and then attach policies granting access to your S3 bucket! 

So tomorrow, an another day for datasets. I like that. 
Step by step, ferociously!
