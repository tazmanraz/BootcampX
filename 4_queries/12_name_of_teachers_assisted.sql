
-- Alternate way
-- SELECT DISTINCT teachers.name AS teacher, cohorts.name AS cohort
-- FROM assistance_requests
-- JOIN students ON students.id = student_id
-- JOIN teachers ON teachers.id = teacher_id
-- JOIN assignments ON assignments.id = assignment_id
-- JOIN cohorts ON cohorts.id = cohort_id
-- WHERE cohorts.name = 'JUL02'
-- ORDER BY teachers.name ASC;

SELECT teachers.name AS teacher, cohorts.name AS cohort
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN teachers ON teachers.id = teacher_id
JOIN assignments ON assignments.id = assignment_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name
ORDER BY teachers.name ASC;
