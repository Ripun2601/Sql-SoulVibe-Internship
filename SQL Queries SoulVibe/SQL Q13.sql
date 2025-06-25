#Q13)Extract only the course specialization from Course Name.
SELECT `College Name`,
`Course Name`,
CASE 
	WHEN `Course Name` ='Master in Computer Application (Direct Second Year) - Master in  Computer Application(2nd Year)' 
    THEN 'Computer Application(2nd Year)'
    WHEN `Course Name` LIKE '% - %' THEN substring_index(`Course Name`,' - ',-1)
    WHEN `Course Name` LIKE '% in %' THEN substring_index(`Course Name`,' in ',-1)
    
    ELSE 'null'
END AS specialization
FROM collegecourses;