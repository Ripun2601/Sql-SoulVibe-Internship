#Q7. Assign a rank to each course within a College Name based on course duration, longest first.
SELECT `College Name`,
`Course Name`,
`Course Duration (In months)`,
RANK() OVER (PARTITION BY `College Name` ORDER BY `Course Duration (In months)` DESC ) AS `RANK`
FROM collegecourses

