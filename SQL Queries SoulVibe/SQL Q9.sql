#Q9. Show the cumulative number of professional courses offered by each university sorted alphabetically.
SELECT University,
COUNT(`Course Name`) AS `No. of Professional Courses`
FROM collegecourses
WHERE `Is Professional`='Professional Course'
GROUP BY University
ORDER BY University