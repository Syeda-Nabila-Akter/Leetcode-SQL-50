-- 1174. Immediate Food Delivery II
-- Difficulty: Medium
WITH delivery_rank AS (
    SELECT
        *,
        ROW_NUMBER () OVER (
            PARTITION BY customer_id ORDER BY order_date
        ) AS rnk
    FROM Delivery
)
SELECT 
    ROUND(SUM(CASE WHEN order_date = customer_pref_delivery_date THEN 1 ELSE 0 END)::NUMERIC*100 / COUNT(*), 2) AS immediate_percentage 
FROM delivery_rank
WHERE rnk = 1;

-- 550. Game Play Analysis IV
-- Difficulty: Medium
WITH temp_table AS (
    SELECT 
        player_id,
        event_date,
        ROW_NUMBER() OVER(
            PARTITION BY player_id ORDER BY event_date 
        ) AS rnk,
        first_value(event_date) OVER(
            PARTITION BY player_id 
            ORDER BY event_date
        ) AS first_date
FROM Activity
)
SELECT 
ROUND(
    COUNT(CASE WHEN rnk = 2 AND first_date + 1 = event_date THEN 1 END)::NUMERIC / COUNT(distinct player_id), 2) AS fraction 
FROM temp_table;

-- 1193. Monthly Transactions I
-- Difficulty: Medium
SELECT
    TO_CHAR(trans_date, 'YYYY-MM') AS month,
    country,
    COUNT(state) AS trans_count,
    COUNT(CASE WHEN STATE = 'approved' THEN 1 END) AS approved_count,
    SUM(amount) AS trans_total_amount,
    SUM(CASE WHEN STATE = 'approved' THEN amount ELSE 0 END) AS approved_total_amount
FROM Transactions
GROUP BY country,month;

-- 620. Not Boring Movies
-- Difficulty: Easy
SELECT 
    id,
    movie,
    description,
    rating
FROM Cinema
WHERE id % 2 = 1 AND description != 'boring'
ORDER BY rating DESC;

-- 1075. Project Employees I
-- Difficulty: Easy
SELECT
    p.product_id,
    ROUND(COALESCE(SUM(p.price * us.units)::numeric / NULLIF(SUM(us.units), 0), 0), 2) AS average_price
FROM Prices p
LEFT JOIN UnitsSold us
    ON us.product_id = p.product_id
    AND us.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY 
p.product_id;

-- 1251. Average Selling Price
-- Difficulty: Easy
SELECT
    P.project_id,
    ROUND(AVG(E.experience_years::NUMERIC), 2) AS average_years
FROM Project P
LEFT JOIN Employee E
    ON P.employee_id = E.employee_id
GROUP BY
    P.project_id
ORDER BY
    P.project_id ASC;

-- 1633. Percentage of Users Attended a Contest
-- Difficulty: Easy
WITH user_count AS (
    SELECT COUNT(user_id) AS total_user
    FROM Users
)
SELECT 
    contest_id,
    ROUND((COUNT(contest_id)::NUMERIC/user_count.total_user)*100, 2) AS percentage 
FROM Register, user_count
GROUP BY contest_id, user_count.total_user
ORDER BY 
percentage DESC, 
contest_id ASC;

-- 1211. Queries Quality and Percentage
-- Difficulty: Easy
WITH calc AS
(
    SELECT 
        query_name,
        rating,
        position,
        rating/position::numeric as calc_quality
    FROM Queries
)

SELECT DISTINCT
    query_name,
    round(sum(calc_quality)/count(query_name)::numeric, 2) AS quality,
    round(100*sum(CASE WHEN rating < 3 THEN 1 ELSE 0 END)/count(query_name)::numeric, 2) AS poor_query_percentage 
FROM calc
GROUP BY query_name;
