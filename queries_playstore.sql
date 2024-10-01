-- Comments in SQL Start with dash-dash --

-- 1 --
SELECT app_name FROM analytics WHERE id = 1880;

-- 2 --
SELECT id, app_name FROM analytics WHERE last_updated = '2018-08-01';
-- 3 --
SELECT category, count(*) FROM analytics GROUP BY category;

-- 4 --
SELECT app_name FROM analytics ORDER BY reviews DESC LIMIT 5;

-- 5 --
SELECT app_name FROM analytics WHERE rating >= 4.8 ORDER BY reviews desc LIMIT 1;

-- 6 --
SELECT category, AVG(rating) AS avg_rating FROM analytics GROUP BY category ORDER BY avg_rating DESC;

-- 7 --
SELECT app_name, price, rating FROM analytics WHERE rating < 3 ORDER BY price DESC LIMIT 1;

-- 8 --
SELECT app_name FROM analytics WHERE min_installs >= 50 AND rating IS NOT null ORDER BY rating DESC;

-- 9 --
SELECT app_name FROM analytics WHERE rating < 3 AND reviews >= 1000;

-- 10 --
SELECT * FROM analytics WHERE price BETWEEN 0.1 AND 1 ORDER BY reviews DESC LIMIT 10;

-- 11 --
SELECT * FROM analytics ORDER BY last_updated LIMIT 1;
-- or
SELECT app_name FROM analytics WHERE last_updated = (SELECT MIN(last_updated) FROM analytics);

-- 12 --
SELECT * FROM analytics ORDER BY price DESC LIMIT 1;
 --or
 SELECT app_name, price FROM analytics WHERE price = (SELECT MAX (price) FROM analytics);

-- 13 --
SELECT COUNT(reviews) FROM analytics;

-- 14 --
SELECT category, COUNT(*) AS num_apps FROM analytics GROUP BY category;

-- 15 --
SELECT app_name, reviews, min_installs, (min_installs/reviews) AS proportion FROM analytics WHERE min_installs >= 100000 ORDER BY proportion DESC LIMIT 1;

-- Further Study --

-- 1 --
SELECT app_name, rating, category FROM analytics 
WHERE (rating, category) IN 
(SELECT MAX(rating), category FROM analytics WHERE min_installs >= 50000 GROUP BY category);

-- 2 --
SELECT app_name FROM analytics WHERE app_name ILIKE '%facebook%';

-- 3 --
SELECT app_name, genres FROM analytics WHERE ARRAY_LENGTH(genres, 1) >= 2;

-- 4 --
SELECT app_name, genres FROM analytics WHERE genres @> '{"Education"}';