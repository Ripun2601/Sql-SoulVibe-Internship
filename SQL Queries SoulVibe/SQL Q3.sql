#Q3. Count how many unique College Names offer each Course Category.
SELECT `Course Category`,
COUNT(DISTINCT `College Name`) AS `Unique Colleges`
FROM collegecourses
GROUP BY `Course Category`
;