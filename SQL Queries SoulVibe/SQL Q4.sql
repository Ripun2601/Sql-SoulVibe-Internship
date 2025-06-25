#Q4. Find the names of colleges offering both Post Graduate and Under Graduate courses.
SELECT `College Name`
FROM `collegecourses`
WHERE `Course Type` IN ('Under Graduate Course','Post Graduate Course')
GROUP BY `College Name`
HAVING COUNT(DISTINCT `Course Type`)=2
;
