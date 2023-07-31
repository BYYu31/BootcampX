SELECT sum(assistance_requests.completed_at - assistance_requests.started_at) /count(DISTINCT cohorts.name) as average_total_duration
FROM students
JOIN cohorts ON cohorts.id = students.cohort_id
JOIN assistance_requests ON student_id = students.id;