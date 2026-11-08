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
