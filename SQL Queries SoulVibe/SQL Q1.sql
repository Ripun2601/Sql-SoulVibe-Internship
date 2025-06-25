#Q1. Find the top 5 districts with the highest number of colleges offering professional courses.

SELECT District FROM soulvibe_internship.collegecourses
WHERE `Is Professional` ='Professional Course'
GROUP BY District 
ORDER BY COUNT(DISTINCT `College Name`) DESC
LIMIT 5
;