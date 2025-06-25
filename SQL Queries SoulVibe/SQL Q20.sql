#Q20. Determine which Course Category has the highest average course duration and display the top 3.
SELECT `Course Category`,
AVG(`Course Duration (In months)`) AS avg_dur
FROM collegecourses
GROUP BY `Course Category`
ORDER BY avg_dur DESC
LIMIT 3