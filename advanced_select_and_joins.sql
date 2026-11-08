-- 1907. Count Salary Categories
-- Difficulty: Medium
WITH categoris AS(
    SELECT 'Low Salary' AS category
    UNION ALL
    SELECT 'Average Salary'
    UNION ALL
    SELECT 'High Salary'
),
temp_table AS(
    SELECT
            *,
            CASE 
                WHEN income < 20000 THEN 'Low Salary'
                WHEN income BETWEEN 20000 AND 50000 THEN 'Average Salary'
                WHEN income > 50000 THEN 'High Salary'
            END AS category
    FROM Accounts
)
SELECT
    c.category,
    COALESCE(COUNT(t.account_id), 0) AS accounts_count
FROM categoris c 
LEFT JOIN temp_table t 
    ON c.category = t.category
GROUP BY c.category;

-- 1204. Last Person to Fit the Bus
-- Difficulty: Medium
WITH temp_table AS(
    SELECT
        *,
        SUM(weight) OVER(
            ORDER BY turn
            ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
        ) AS Total_Weight
    FROM Queue
)

SELECT person_name
FROM temp_table
WHERE Total_Weight <= 1000
ORDER BY Total_Weight DESC
LIMIT 1;

-- 1164. Product Price at Given Date
-- Difficulty: Medium
WITH temp_table AS(
    SELECT
        product_id,
        new_price,
        change_date,
        ROW_NUMBER() OVER(
            PARTITION BY product_id
            ORDER BY change_date DESC
        ) as rnk
FROM Products
WHERE change_date <= '2019-08-16'
)

SELECT
    p.product_id,
    COALESCE(t.new_price, 10) AS price
FROM (SELECT DISTINCT product_id FROM Products) p
LEFT JOIN temp_table t
    ON p.product_id = t.product_id
    AND t.rnk = 1;

-- 180. Consecutive Numbers
-- Difficulty: Medium
WITH val AS (
    SELECT
        id,
        num,
        LEAD(num) OVER(ORDER BY id) AS front_value,
        LAG(num) OVER(ORDER BY id) AS back_value
    FROM Logs
)
SELECT DISTINCT num AS ConsecutiveNums FROM val WHERE num = front_value AND num = back_value;

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
