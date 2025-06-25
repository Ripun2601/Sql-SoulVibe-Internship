/*Q12. Create a new column classifying course duration as:
Short (< 12 months)
Medium (12-36 months)
Long (> 36 months)
Then count the number of each duration type per course category.
*/
SELECT 
`Course Category`,
COUNT(*) AS count_course,
CASE
	WHEN `Course Duration (In months)`< 12 THEN 'Short'
    WHEN `Course Duration (In months)` BETWEEN 12 AND 36 THEN 'Medium'
    WHEN `Course Duration (In months)`>36 THEN 'Long'
 END AS Course_Time
 FROM collegecourses
 GROUP BY `Course Category`,Course_Time

;
