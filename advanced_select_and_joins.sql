-- 610. Triangle Judgement
-- Difficulty: Easy
SELECT
    x, y, z,
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

-- 1731. The Number of Employees Which Report to Each Employee
-- Difficulty: Easy
SELECT
e1.employee_id,
e1.name,
COUNT(e2.reports_to) AS reports_count,
ROUND(AVG(e2.age)) AS average_age 
FROM Employees e1
JOIN Employees e2
    ON e1.employee_id = e2.reports_to
GROUP BY e2.reports_to
ORDER BY e1.employee_id;
