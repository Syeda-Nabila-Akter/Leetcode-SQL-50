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
