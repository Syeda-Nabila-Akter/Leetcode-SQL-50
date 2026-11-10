-- 185. Department Top Salaries
-- Difficulty: Hard
WITH temp_table AS(
    SELECT 
        D.name AS Department,
        E.name AS Employee,
        E.salary AS Salary,
        DENSE_RANK() OVER(
        PARTITION BY D.name
        ORDER BY salary DESC
    ) AS rnk
FROM Employee E
LEFT JOIN Department D
    ON E.departmentID = D.id
)

SELECT
    Department,
    Employee,
    Salary
FROM temp_table
WHERE rnk <= 3;

-- 1978. Exchange Seats
-- Difficulty: Medium
SELECT
    id,
    COALESCE(CASE WHEN id%2 = 1 THEN LEAD(student) OVER(ORDER BY id)
    ELSE LAG(student) OVER(ORDER BY id)
    END, student) AS student
FROM Seat;

-- 1978. Employees Whose Managers Left The Country
-- Difficulty: Easy
SELECT DISTINCT
    employee_id
FROM Employees
WHERE manager_id NOT IN(
    SELECT employee_id FROM Employees
) 
AND salary < 30000
ORDER BY employee_id ASC;
