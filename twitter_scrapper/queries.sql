SELECT * FROM tweetdb.hashtag;
@tweet = 'ballot drop off 🗳️ (@ Mayfair Park) on #Yelp https://t.co/HNnC5QjJpj'

-- 1. what user posted this tweet ?
SELECT
users.user_id,
users.username,
hashtag.text 
FROM hashtag
JOIN users ON hashtag.user_id = users.user_id
WHERE hashtag.text = 'ballot drop off 🗳️ (@ Mayfair Park) on #Yelp https://t.co/HNnC5QjJpj';


-- 2. when did this user post this tweet?
SELECT
users.user_id,
users.username,
hashtag.text, 
hashtag.time
FROM hashtag
JOIN users ON hashtag.user_id = users.user_id
WHERE hashtag.text = 'ballot drop off 🗳️ (@ Mayfair Park) on #Yelp https://t.co/HNnC5QjJpj';


-- 3. what tweets have this user posted in past 24h ?
SELECT 
user_id,
text,
created_at
FROM timeline
WHERE created_at >= NOW() - INTERVAL 1 DAY AND user_id IN  
	(SELECT users.user_id FROM hashtag JOIN users 
    ON hashtag.user_id = users.user_id 
    WHERE hashtag.text = 'ballot drop off 🗳️ (@ Mayfair Park) on #Yelp https://t.co/HNnC5QjJpj');
 
-- 4. How many tweets have this user posted in past 24h
SELECT 
COUNT(text)
FROM timeline
WHERE created_at >= NOW() - INTERVAL 1 DAY AND user_id IN  
	(SELECT users.user_id FROM hashtag JOIN users 
    ON hashtag.user_id = users.user_id 
    WHERE hashtag.text = 'ballot drop off 🗳️ (@ Mayfair Park) on #Yelp https://t.co/HNnC5QjJpj');
  
-- 5. when did this user join twitter?
SELECT
users.username,
users.created_at AS Account_created 
FROM hashtag
JOIN users ON hashtag.user_id = users.user_id
WHERE hashtag.text = 'ballot drop off 🗳️ (@ Mayfair Park) on #Yelp https://t.co/HNnC5QjJpj';

-- 6. What tweets are popular?
SELECT
username,
text,
url,
likes,
retweets
FROM hashtag
JOIN users ON hashtag.user_id = users.user_id
WHERE likes >= 5 or retweets >= 5;
 

    
    
    