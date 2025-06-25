#Q19For each University, find the percentage of unaided courses that are professional.

SELECT University,
(SUM(CASE 
		WHEN `Is Professional`='Professional Course' THEN 1 ELSE 0
	END)/COUNT(*))*100 AS No_Professional
FROM collegecourses
WHERE `Course (Aided / Unaided)`='Unaided'
GROUP BY University