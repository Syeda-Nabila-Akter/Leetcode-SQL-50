-- 2356. Number of Unique Subjects Taught by Each Teacher
-- Difficulty: Easy
SELECT 
    teacher_id,
    COUNT(DISTINCT subject_id) as cnt
FROM Teacher
GROUP BY teacher_id;
