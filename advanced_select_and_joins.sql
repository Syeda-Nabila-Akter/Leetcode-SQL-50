-- 610. Triangle Judgement
-- Difficulty: Easy
SELECT
    x,
    y,
    z,
    CASE WHEN x+y > z AND x+z > y AND z+y > x THEN 'Yes' Else 'No' END AS triangle   
FROM Triangle;

-- 1789. Primary Department for Each Employee
-- Difficulty: Easy
SELECT
    employee_id,
    department_id
FROM Employee
GROUP BY employee_id
HAVING COUNT(department_id) = 1
UNION
SELECT
    employee_id,
    department_id
FROM Employee
WHERE primary_flag = 'Y';
