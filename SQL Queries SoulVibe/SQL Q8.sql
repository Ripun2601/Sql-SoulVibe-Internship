#Q8. Find colleges where the longest and shortest course durations are more than 24 months apart.
SELECT `College Name`,
MAX(`Course Duration (In months)`) AS max,
MIN(`Course Duration (In months)`) AS min
FROM collegecourses
GROUP BY `College Name`
HAVING max-min >24;
