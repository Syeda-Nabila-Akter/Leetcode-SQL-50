-- 610. Triangle Judgement
-- Difficulty: Easy
SELECT
    x,
    y,
    z,
    CASE WHEN x+y > z AND x+z > y AND z+y > x THEN 'Yes' Else 'No' END AS triangle   
FROM Triangle;
