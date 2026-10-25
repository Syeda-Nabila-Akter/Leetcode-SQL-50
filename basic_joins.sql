-- 570. Managers with at Least 5 Direct Reports
-- Difficulty: Medium
WITH emp_temp AS(
    SELECT
        id,
        name
    FROM Employee
),

manager_temp AS(
    SELECT
        managerId
    FROM Employee
    LEFT JOIN emp_temp 
        ON Employee.managerId = emp_temp.id
    GROUP BY managerId
    HAVING COUNT(emp_temp.id) >= 5
)

SELECT
    e.name
FROM emp_temp e
JOIN manager_temp m
    ON e.id = m.managerId;
