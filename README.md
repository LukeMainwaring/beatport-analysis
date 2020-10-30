Attributes I want to analyze (in descending order of interest): Genre, BPM, Key, Length, Label

Score for popularity of an attribute at one point in time = (1 / rank)
For example, if one day Melodic House shows up in spots 2 and 24, then the score for this genre is (1/2 + 1/24) = 13/24

Other attributes to include and visualize

- average BPM of genres (and how it's changed over time)
- average song length of genres (and how it's changed over time)
- most popular keys of genres (and how it's changed over time)
- most popular genres by record label (and how it's changed over time)
- \*When looking at these attributes, consider weighting them based on their score/rank. For example, G min might be the most common key in Bass House, but within Bass House D maj is more likely to top the chart or is trending upwards. Also wondering though, is a #1 song's genre 100x more important than a #100 of the same attribute when calculating popularity?

First idea:

- set up backend python processes in Docker container and use React frontend.
- run the webscraping function with a scheduler (every 3 days?) and keep in MySql database
- wrap backend in Flask and create controllers that return relevant information -> for each controller that returns an attribute there should be one that returns all and one that's constrained to start/end times
- consider some form of caching if it takes a long time to convert mysql db into pandas df

Notes:

- Use this as intuition as to when you should manipulate data with SQL vs Pandas - https://www.quora.com/In-what-situations-should-you-use-SQL-instead-of-Pandas-as-a-data-scientist#:~:text=A%20Pandas%20dataframe%20is%20a,munging%20and%20wrangling%20faster%20also.
