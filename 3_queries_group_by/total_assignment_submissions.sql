SELECT cohorts.name as cohort_name, count(assignment_submissions.assignment_id) as total_submissions
FROM cohorts
JOIN students ON students.cohort_id = cohorts.id
JOIN assignment_submissions ON assignment_submissions.student_id = students.id
GROUP BY cohorts.name
ORDER BY count(assignment_submissions.assignment_id) DESC;