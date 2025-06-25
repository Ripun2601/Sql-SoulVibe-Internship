#Q2. Calculate the average course duration (in months) for each Course Type and sort them in descending order.
SELECT `Course Type`,
AVG(`Course Duration (In months)`) AS avg_duration,
ROUND(AVG(`Course Duration (In months)`)) AS Rounded_avg
FROM collegecourses
GROUP BY `Course Type`
ORDER BY avg_duration DESC
 ;