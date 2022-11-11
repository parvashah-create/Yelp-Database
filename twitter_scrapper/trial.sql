-- Adding contraints

ALTER TABLE hashtag 
ADD FOREIGN KEY (user_id) REFERENCES users(user_id);


ALTER TABLE timeline 
ADD FOREIGN KEY (user_id) REFERENCES users(user_id);

SELECT *
FROM timeline
LEFT JOIN users ON timeline.user_id = users.user_id
WHERE users.user_id is NULL;