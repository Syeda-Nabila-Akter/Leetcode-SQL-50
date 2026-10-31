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

-- 196. Delete Duplicate Emails
-- Difficulty: Easy
WITH temp_table AS(
    SELECT
        id,
        email,
        ROW_NUMBER() OVER(
            PARTITION BY email
            ORDER BY id
        ) AS rnk
    FROM Person
)
DELETE FROM temp_table
WHERE rnk > 1;

-- 1484. Group Sold Products by The Date
-- Difficulty: Easy
SELECT 
    sell_date,
    COUNT(DISTINCT product) AS num_sold,
    STRING_AGG (DISTINCT product,',') AS products
FROM Activities
GROUP BY sell_date;

-- 1327. List the Products Ordered in a Period
-- Difficulty: Easy
SELECT DISTINCT
    product_name,
    SUM(unit) AS unit
FROM Orders
LEFT JOIN Products
    ON Orders.product_id = Products.product_id
WHERE order_date BETWEEN '2020-02-01' AND '2020-02-29'
GROUP BY product_name
HAVING SUM(unit) >= 100;
