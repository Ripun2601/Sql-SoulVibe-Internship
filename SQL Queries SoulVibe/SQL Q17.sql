#Q17. Find the university that has the second-highest number of aided courses.
SELECT University,
COUNT(*) AS Aided_courses
FROM collegecourses
WHERE `Course (Aided / Unaided)`='Aided'
GROUP BY University 
ORDER BY Aided_courses DESC
LIMIT 1,1;

