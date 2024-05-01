create index on tweet_tags(id_tweets, tag);
create index on tweet_tags(tag, id_tweets);
create index on tweets(id_tweets, lang);
create index on tweets(lang);
create index tweets_text on tweets using GIN(to_tsvector('english', text)) where lang = 'en';
