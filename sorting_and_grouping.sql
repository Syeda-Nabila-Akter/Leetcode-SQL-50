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
