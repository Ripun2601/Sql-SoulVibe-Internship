#Q6. Display colleges from the "Engineering" category that have at least one course with a duration greater than the category’s average.
SELECT DISTINCT `College Name`,`Course Name`, `Course Duration (In months)`
FROM collegecourses
WHERE `Course Category`='Engineering' 
       AND (`Course Duration (In months)`)> (  
       SELECT AVG(`Course Duration (In months)`)  
       FROM collegecourses
       WHERE `Course Category`='Engineering' )
;       
	  
