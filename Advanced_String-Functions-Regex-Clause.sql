-- 1527. Patients With a Condition
-- Difficulty: Easy
SELECT
    user_id,
    concat(
        UPPER(SUBSTRING(name, 1, 1)),
        LOWER(SUBSTRING(name, 2, LENGTH(name)))
    ) AS name
FROM Users
ORDER BY user_id ASC;

-- 1667. Fix Names in a Table
-- Difficulty: Easy
SELECT * FROM Patients WHERE conditions 
LIKE 'DIAB1%' OR conditions LIKE '% DIAB1%';
