
-- This did not work. Inquire with mentor later
-- SELECT teachers.name AS teacher, cohorts.name AS cohort, count(*) as total_assistances
-- FROM assistance_requests
-- JOIN students ON students.id = student_id
-- JOIN teachers ON teachers.id = teacher_id
-- JOIN assignments ON assignments.id = assignment_id
-- JOIN cohorts ON cohorts.id = cohort_id
-- WHERE cohorts.name = 'JUL02'
-- GROUP BY teachers.name, cohorts.name
-- ORDER BY teachers.name ASC;


SELECT teachers.name as teacher, cohorts.name as cohort, count(assistance_requests) as total_assistances
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name
ORDER BY teacher;
