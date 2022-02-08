SELECT teachers.name as teacher, students.name as student, assignments.id as assignment, (assistance_requests.completed_at - assistance_requests.started_at) as duration
FROM teachers
JOIN assistance_requests ON teachers.id = teacher_id
JOIN assignments ON assistance_requests.assignment_id = assignments.id
JOIN students ON students.id = assistance_requests.student_id
ORDER BY duration;