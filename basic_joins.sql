-- 1934. Confirmation Rate
-- Difficulty: Medium
SELECT 
    S.user_id,
    ROUND(COALESCE(COUNT(CASE WHEN ACTION = 'confirmed' THEN 1 END)/NULLIF(COUNT(ACTION)::NUMERIC, 0), 0), 2) AS confirmation_rate 
FROM Confirmations C
RIGHT JOIN Signups S
    ON C.user_id = S.user_id 
GROUP BY S.user_id;

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

-- 1378. Replace Employee ID With The Unique Identifier
-- Difficulty: Easy
SELECT 
    EmployeeUNI.unique_id,
    Employees.name
FROM Employees 
LEFT JOIN EmployeeUNI
    ON Employees.id = EmployeeUNI.id;

-- 1068. Product Sales Analysis I
-- Difficulty: Easy
SELECT
    Product.product_name,
    Sales.year,
    Sales.price
FROM Sales
LEFT JOIN Product
ON Sales.product_id  = Product.product_id;

-- 1581. Customer Who Visited but Did Not Make Any Transactions
-- Difficulty: Easy
SELECT
    customer_id,
    COUNT(customer_id) AS count_no_trans 
FROM Visits
LEFT JOIN Transactions
ON Visits.visit_id = Transactions.visit_id
WHERE Visits.visit_id IS NOT NULL AND Transactions.transaction_id IS NULL
GROUP BY customer_id;

-- 197. Rising Temperature
-- Difficulty: Easy
SELECT
    W1.id
FROM Weather W1
LEFT JOIN Weather W2
    ON W1.recordDate = W2.recordDate+1
WHERE W1.temperature > W2.temperature;

-- 1661. Average Time of Process per Machine
-- Difficulty: Easy
SELECT
    machine_id, 
    ROUND(
        (AVG(CASE WHEN activity_type = 'end' THEN timestamp END) -
        AVG(CASE WHEN activity_type = 'start' THEN timestamp END))::numeric, 3
    ) AS processing_time
FROM Activity
GROUP BY machine_id;

-- 577. Employee Bonus
-- Difficulty: Easy
SELECT 
    Employee.name,
    Bonus.bonus
FROM Employee
LEFT JOIN Bonus
    ON Employee.empId = Bonus.empId
WHERE Bonus.bonus < 1000 or Bonus.bonus IS NULL;

-- 1280. Students and Examinations
-- Difficulty: Easy
SELECT
    Students.student_id,
    Students.student_name,
    Subjects.subject_name,
    COUNT(Examinations.subject_name) AS attended_exams 
FROM Students
CROSS JOIN Subjects
LEFT JOIN Examinations 
    ON Students.student_id = Examinations.student_id AND
     Subjects.subject_name = Examinations.subject_name
GROUP BY 
Students.student_id,
Students.student_name,
Subjects.subject_name
ORDER BY
Students.student_id,
Subjects.subject_name;





