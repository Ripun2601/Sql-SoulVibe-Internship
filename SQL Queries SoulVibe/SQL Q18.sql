#Q18. Show courses whose durations are above the median course duration.
WITH ranked_courses AS (
    SELECT `Course Duration (In months)`,
           ROW_NUMBER() OVER (ORDER BY `Course Duration (In months)`) as row_num,
           COUNT(*) OVER () as total_count  #(SELECT COUNT(*) FROM courses) as total_count
    FROM collegecourses
),
median_duration AS (
    SELECT AVG(`Course Duration (In months)`) as median_val
    FROM ranked_courses
    WHERE row_num IN ((total_count + 1) / 2, (total_count + 2) / 2)
)
SELECT `Course Name`,
`Course Duration (In months)`,
(SELECT median_val FROM median_duration) AS Median_Dur
FROM collegecourses
WHERE `Course Duration (In months)` > (SELECT median_val FROM median_duration)