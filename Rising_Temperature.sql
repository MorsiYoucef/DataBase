# Write your MySQL query statement below
SELECT B.id AS Id
FROM Weather AS A
JOIN Weather AS B
ON DATE_ADD(A.recordDate, INTERVAL 1 DAY) = B.recordDate 
WHERE A.temperature < B.temperature