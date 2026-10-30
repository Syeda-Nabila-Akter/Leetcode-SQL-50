-- 1070. Product Sales Analysis III
-- Difficulty: Medium
WITH temp_table AS(
    SELECT 
        *,
        RANK() OVER(
            PARTITION BY product_id 
            ORDER BY year
        ) AS rnk
    FROM Sales
)
SELECT 
    product_id,
    year AS first_year,
    quantity,
    price
FROM temp_table
WHERE rnk = 1;

-- 2356. Number of Unique Subjects Taught by Each Teacher
-- Difficulty: Easy
SELECT 
    teacher_id,
    COUNT(DISTINCT subject_id) as cnt
FROM Teacher
GROUP BY teacher_id;

-- 1141. User Activity for the Past 30 Days I
-- Difficulty: Easy
SELECT 
    activity_date AS day,
    COUNT(DISTINCT user_id) AS active_users
FROM Activity
WHERE activity_type IS NOT NULL AND activity_date BETWEEN '2019-06-28' AND '2019-07-27'
GROUP BY activity_date;

-- 596. Classes with at least 5 Students
-- Difficulty: Easy
SELECT
    class
FROM Courses
GROUP BY class
HAVING COUNT(student) >= 5;

-- 1729. Find Followers Count
-- Difficulty: Easy
SELECT 
    user_id,
    COUNT(follower_id) AS followers_count
FROM Followers
GROUP BY user_id
ORDER BY user_id ASC;

-- 619. Biggest Single Number
-- Difficulty: Easy
SELECT MAX(num) AS num
FROM (
    SELECT num
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(num) = 1
) AS t;
