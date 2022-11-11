INSERT INTO users
(user_id, username, location, created_at)
VALUES (112900604, "TheRealNekaRay", "Maryland, USA", '2010-02-10 02:18:13');

INSERT INTO hashtag
(tweet_id, user_id, text, url, retweets, likes, time)
VALUES (1589845173340708865, 931223747985575936, 'Checkout we\'re providing #bulk #data of 3k plus #business #categories\n\n#plumbing #roofing #landscaping #realtors #hotels #restaurants #leads #leadsgeneration #emailslist #doctors #dentists #lawyers #socialmedia #python #java #php #yelp #googlemaps #ml #AI\n\nhttps://t.co/xO23syY7dI https://t.co/KnRSRphnmw', 'https://t.co/xO23syY7dI', 5, 5, '2022-11-08 05:00:01');

SELECT 
users.username,
timeline.text,
timeline.created_at
FROM timeline
JOIN users ON timeline.user_id = users.user_id
WHERE username = "prplehaiz"; 

SELECT
username,
text,
url,
likes,
retweets
FROM hashtag
JOIN users ON hashtag.user_id = users.user_id
WHERE likes >= 5 or retweets >= 5;

SELECT
username,
created_at AS account_created_date
FROM users
WHERE username = "cursortek";
