#Q15)List all unique combinations of Course Name, Course Type, and Course Category.
SELECT `Course Name`,
`Course Type`,
`Course Category`
FROM collegecourses
Group by `Course Name`,`Course Type`,`Course Category`