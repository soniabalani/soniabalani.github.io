SELECT tesla_tweets.Day AS Date, ROUND((Close-Open),2) AS "Change in Stock Price", 
Relevant_Tweets AS "Tweets Relevant to Tesla", Irrelevant_Tweets AS "Tweets Not Relevant to Tesla",
Total_Tweets AS "Total Tweets", ROUND((0.3*ABS(Close-Open))+(0.7*Total_Tweets),2) AS Score
FROM tesla_tweets INNER JOIN tesla_stock ON tesla_tweets.Day = tesla_stock.Date 
WHERE Total_Tweets > 3 and ABS((Close-Open)) > 0.04
ORDER BY Score DESC
