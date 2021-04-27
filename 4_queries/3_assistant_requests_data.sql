-- Retrieves the full table of all assignments a teacher has helped a student with ordered by duration of help

SELECT teachers.name AS teacher, students.name AS student, assignments.name AS assignment, (completed_at-started_at) as duration
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN teachers ON teachers.id = teacher_id
JOIN assignments ON assignments.id = assignment_id
ORDER BY duration;
