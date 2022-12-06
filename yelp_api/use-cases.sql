-- use case 1: Name of the user that has posted the most reviews
SELECT
user.name, 
COUNT(review_id) AS num_of_reviews
FROM
review
JOIN user ON review.user_id = user.user_id  
GROUP BY review.user_id
ORDER BY COUNT(review_id) DESC;

-- use case 2: number of businesses in each category
SELECT
categories,
COUNT(business.business_id) AS num_business
FROM 
business
JOIN category ON business.business_id = category.business_id 
GROUP BY categories
ORDER BY num_business desc;

-- use case 3: number of businesses in each state by category
SELECT
categories,
state,
COUNT(business.business_id) AS num_business
FROM 
business
JOIN category ON business.business_id = category.business_id 
GROUP BY categories,state
ORDER BY num_business desc;

-- use case 4: avg stars of business in the state of FLORIDA in each postal code
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

-- use case 5: Category with the most reviews
SELECT
categories,
COUNT(review.review_id) as num_reviews
FROM 
review
JOIN category ON review.business_id = category.business_id 
GROUP BY categories
ORDER BY num_reviews DESC




 
