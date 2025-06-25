#Q14)Count how many courses include the word Engineering in the name.
SELECT 
COUNT(`Course Name`) AS Total_COUNT
FROM collegecourses
WHERE `Course Name` LIKE '%Engineering%'