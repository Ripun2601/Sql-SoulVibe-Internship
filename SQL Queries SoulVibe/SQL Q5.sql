#Q5. List all universities that have more than 10 unaided courses that are not professional.
SELECT `University`
FROM collegecourses
WHERE `Course (Aided / Unaided)`='UnAided'
      AND `Is Professional` !='Professional Course'
GROUP BY `University`
HAVING COUNT(`Course (Aided / Unaided)`)>10
;