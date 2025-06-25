#Q10)Using a self-join or CTE, find colleges offering more than one course category
WITH CTE AS (
SELECT `College Name`
FROM collegecourses
GROUP BY `College Name`
HAVING COUNT(DISTINCT `Course Category`)>1

) 

SELECT *
FROM CTE;