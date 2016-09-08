#Authur: Maureen Waitherero Wachira
#For:Setting-up-Twitter-R-for-text-analytics
#Date: 8th September 2016

#******************Retrieve tweets from Twitter*****************************
#*************************************************************

library(twitteR)
library(ROAuth)

#******************Twitter authentication*****************************
#*********************************************************************


# Go to http://dev.twitter.com/apps/new to create an app and get values
# for these credentials, which you'll need to provide in place of these
# empty string values that are defined as placeholders.


consumer_key <- 	  "insert consumer_key "
consumer_secret <- 	"insert consumer_secret"
access_token <-     "insert access_token"
access_secret <- 	  "insert access_secret"


setup_twitter_oauth(consumer_key, consumer_secret, access_token,
                    access_secret)

# retrieve tweets

tweets <- searchTwitter("Obamacare OR ACA OR 'Affordable Care Act' OR #ACA", n=100, lang="en", since="2014-08-20")

# Transform tweets list into a data frame
tweets.df <- twListToDF(tweets)