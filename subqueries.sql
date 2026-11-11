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

-- 1321. Restaurant Growth
-- Difficulty: Medium
WITH temp_table AS (
    SELECT 
        visited_on,
        SUM(amount) AS amount,
        SUM(SUM(amount)) OVER(
            ORDER BY visited_on
            RANGE BETWEEN INTERVAL '6 days' PRECEDING
                      AND CURRENT ROW
        ) AS total_amount,
        ROW_NUMBER() OVER(
            ORDER BY visited_on
        ) AS rnk
    FROM Customer
    GROUP BY visited_on
)

SELECT 
    visited_on,
    total_amount AS amount,
    ROUND(total_amount / 7.0, 2) AS average_amount
FROM temp_table
WHERE rnk >= 7
ORDER BY visited_on;

-- 602. Friend Requests II: Who Has the Most Friends
-- Difficulty: Medium
WITH temp_table AS(
    SELECT
        requester_id AS id,
        COUNT(requester_id) as num
    FROM RequestAccepted 
    GROUP BY requester_id

    UNION ALL

    SELECT
        accepter_id AS id,
        COUNT(accepter_id) as num
    FROM RequestAccepted 
    GROUP BY accepter_id
),

temp_table2 AS(
    SELECT 
        id,
        sum(num) as num
    FROM temp_table
    GROUP BY id
)

SELECT 
    id,
    num 
FROM temp_table2
ORDER BY num DESC
LIMIT 1;

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
