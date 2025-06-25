#Q11)Create a temporary table (CTE) that includes average duration of courses by district 
#and use it to list talukas where the average course duration is above the district average.
WITH CTE AS (
SELECT District,
AVG(`Course Duration (In months)`) AS avg_duration
FROM collegecourses
GROUP BY District

)
SELECT Taluka,
CTE.avg_duration,
AVG(`Course Duration (In months)`) AS avg_taluka
FROM CTE
JOIN collegecourses
  ON CTE.District = collegecourses.District
GROUP BY collegecourses.District,Taluka
HAVING avg_taluka > CTE.avg_duration