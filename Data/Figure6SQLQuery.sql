SELECT tesla_sentiment.Date, ROUND((Close-Open),2) AS "Change in Stock Price", Tweets_Tesla AS "Number of Tweets about Tesla", 
Positive, Negative, Neutral, ROUND((0.3*ABS(Close-Open))+(0.7*Total_Tweets),2) AS Score   
FROM tesla_sentiment INNER JOIN tesla_stock ON tesla_sentiment.Date = tesla_stock.Date 
INNER JOIN tesla_tweets ON tesla_stock.Date = tesla_tweets.Day
ORDER BY Score DESC
