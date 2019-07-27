SELECT tesla_sentiment.Date, (Close-Open) AS "Change in Stock Price",Tweets_Tesla AS "Number of Tweets about Tesla", 
Positive, Negative, Neutral, ROUND((0.3*ABS(Close-Open))+(0.7*Total_Tweets),3) AS Score   
FROM tesla_sentiment INNER JOIN tesla_stock ON tesla_sentiment.Date = tesla_stock.Date 
INNER JOIN tesla_tweets ON tesla_stock.Date = tesla_tweets.Day
ORDER BY Score DESC