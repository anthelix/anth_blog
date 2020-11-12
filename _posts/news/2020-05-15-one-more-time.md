---
layout: postlog
title: "Stephanie Chatagner, One more time"
date: 2020-05-15
categories: blog update
permalink: /:categories/:year/:month/:day/:title.html
---

With Pandas, exploring datasets is a game.     
First I copy my Dataframe. That way I always have a clean copy. 
I start slowly with `pd.info()`, `pd.describe()` and finally a `pd.head()`. With `pd.shape` I stay on Python or switch to Spark and that's another story.
Let's go a bit further, `df.nunique()` to count the number of unique values in a column and then `df[df.duplicated(keep=False)].sort_values("one_value")`. I look for duplicate rows, I want them all sorted and grouped by "one value". 

Then I create a smaller Dataframe according to a criterion. For example, I want to create a smaller dataframe, 
`cols = [col for col in n_df.columns if n_df[col].isnull().any()]; df_miss = n_df[cols]` to get a new Dataframe with only the columns containing the missing data. And `df_miss.isna().sum()` to continue exploring this smaller Dataframe. 

By taking a value("US-HI"), we find it if it exists with 
`df[df.apply(lambda x: x.astype(str).str.contains(r'\bUS-HI\b')).any(axis=1)]`. For the whole data frame, if the type is `str`, check that it contains exactly "US-HI" for any value in the column. The return is a Dataframe with the rows that contain this string.   

And don't forget `%xdel` to delete unnecessary Dataframes. 

Tomorrow, I will work about data clean... One more time!   
So, step by step!