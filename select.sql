-- 1757. Recyclable and Low Fat Products
-- Difficulty: Easy
SELECT product_id
FROM products
WHERE low_fats = 'Y' AND recyclable = 'Y';

-- 584. Find Customer Referee
-- Difficulty: Easy
SELECT name FROM Customer
WHERE referee_id IS NULL OR referee_id NOT IN (2);

-- 595. Big Countries
-- Difficulty: Easy
SELECT name, population, area
FROM World
WHERE area >= 3000000 OR population >= 25000000;

-- 1148. Article Views I
-- Difficulty: Easy
SELECT DISTINCT author_id as id
FROM Views
WHERE author_id = viewer_id
ORDER BY author_id;

-- 1683. Invalid Tweets
-- Difficulty: Easy
SELECT tweet_id
FROM Tweets
WHERE length(content) > 15;
