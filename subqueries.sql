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
