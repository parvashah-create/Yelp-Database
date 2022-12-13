

-- use case 1: Name of the user that has posted the most reviews
CREATE VIEW  most_reviews_username AS
SELECT
user.name, 
COUNT(review_id) AS num_of_reviews
FROM
review
JOIN user ON review.user_id = user.user_id  
GROUP BY review.user_id
ORDER BY COUNT(review_id) DESC;

-- use case 2: number of businesses in each category
CREATE VIEW  businesses_by_state AS
SELECT
categories,
COUNT(business.business_id) AS num_business
FROM 
business
JOIN category ON business.business_id = category.business_id 
GROUP BY categories
ORDER BY num_business desc;


-- use case 3: avg stars of business in the state of FLORIDA in each postal code
CREATE VIEW  avg_stars_fl_postal AS
SELECT
postal_code,
state,
AVG(business.stars) as avg_stars,
COUNT(business.business_id) AS num_businesses
FROM 
business
JOIN review ON business.business_id = review.business_id 
WHERE business.state = "FL"
GROUP BY postal_code
ORDER BY avg_stars DESC, num_businesses DESC;

-- use case 4: Category with the most reviews
CREATE VIEW  reviews_per_category AS
SELECT
categories,
COUNT(review.review_id) as num_reviews
FROM 
review
JOIN category ON review.business_id = category.business_id 
GROUP BY categories
ORDER BY num_reviews DESC;

-- use case 5: What percentage of existing Home service businesses on yelp that have happy customers ?
CREATE VIEW  happy_cust_home_service AS
SELECT
((SELECT
COUNT(review.stars)
FROM yelpdb.category
JOIN review ON category.business_id = review.business_id
WHERE categories="home services" AND stars>= 4)/COUNT(review.business_id)) AS percent_happy
FROM yelpdb.category
JOIN review ON category.business_id = review.business_id
WHERE categories="home services";

-- use case 6: What is the number of reviews per year in the home services category ?
CREATE VIEW  nuum_reviews_home_service AS
SELECT 
year(time) as n_year,
count(review_id)
from yelpdb.review
JOIN category ON category.business_id = review.business_id
WHERE categories = "home services" 
group by n_year
order by n_year desc;

-- use case 7: What is the average rate of reviews written per year ?
CREATE VIEW  avg_reviews_per_year AS
SELECT
year(time) as n_year,
(count(review_id)/12) AS avg_review 
from yelpdb.review
JOIN category ON category.business_id = review.business_id
WHERE categories = "home services" 
group by n_year
order by n_year desc;



-- use case 8: What is the number of happy customers in each category ?
CREATE VIEW happy_cust_per_category AS
SELECT
categories,
COUNT(review.stars) AS percent_happy
FROM yelpdb.category
JOIN review ON category.business_id = review.business_id
WHERE review.stars >= 4
GROUP BY categories
ORDER BY percent_happy DESC;


-- use case 9: How many businesses have shutdown per category?
CREATE VIEW  businesses_shutdown AS
SELECT 
categories,
COUNT(business.business_id) AS num_closed
from yelpdb.business
JOIN category ON business.business_id = category.business_id
WHERE business.is_open = 0
GROUP BY categories
ORDER BY num_closed desc;

-- use case 10: What is the number of businesses per category in MA ?
CREATE VIEW  businesses_per_cat_MA AS
SELECT 
business.state,
COUNT(business.business_id) AS num_of_business
FROM yelpdb.business
JOIN category ON business.business_id = category.business_id
WHERE business.state = "MA";



