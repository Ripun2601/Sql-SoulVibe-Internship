#Q16)Get all courses that are not offered by any Government college.
SELECT `Course Name`,
`College Type`
FROM collegecourses
WHERE `College Type` != 'Government'